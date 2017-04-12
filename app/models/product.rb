class Product < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  has_attachments :photos, maximum: 4
  belongs_to :category
  has_many :infos, dependent: :destroy
  has_many :powers, dependent: :destroy
  has_many :brands, dependent: :destroy
end
