class Payment < ApplicationRecord
  attr_accessor :card_number, :card_cvv, :card_expires_month, :card_expires_year

  belongs_to :user

  def self.month_options
    Date::MONTHNAMES.compact.each_with_index.map do |name, index|
      ["#{index + 1} - #{name}", index + 1]
    end
  end

  def self.year_options
    (Date.today.year..(Date.today.year + 10)).to_a
  end

  def process_payment
    @amount = 1000

    customer = Stripe::Customer.create({
      email: email,
      source: token,
    })

    Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: "Premium",
      currency: "usd",
    })
  end
end
