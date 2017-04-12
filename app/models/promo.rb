class Promo < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :start, presence: true
  validates :end, presence: true
  has_attachments :photos, maximum: 4
end
