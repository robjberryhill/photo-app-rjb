class Image < ApplicationRecord
  belongs_to :user

  # Here we are accociating the picture field of the Image model with the uploader
  mount_uploader :picture, PictureUploader
end
