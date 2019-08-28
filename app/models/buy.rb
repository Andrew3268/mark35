class Buy < ApplicationRecord
  belongs_to :user

  has_attached_file :buy_image, styles: { medium: "600x500#", small: "350x250>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :buy_image, content_type: /\Aimage\/.*\z/
end
