class Image < ApplicationRecord
  belongs_to :user

  # Here we are accociating the picture field of the Image model with the uploader
  mount_uploader :picture, PictureUploader

  validate :picture_size

  private

  def picture_size
    errors.add(:picture, "Images should be less than 5MB") if picture.size > 5.megabytes
  end
end
