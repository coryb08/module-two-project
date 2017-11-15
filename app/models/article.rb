class Article < ApplicationRecord
  belongs_to :user
  has_many :article_outfits
  has_many :outfits, through: :article_outfits
  # belongs_to :user
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
