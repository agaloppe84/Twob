class Quotation < ApplicationRecord
  validates :email, presence: { message: "email requis" }
  validates :lastname, presence: { message: "nom requis" }
  validates :firstname, presence: { message: "prénom requis" }
  validates :city, presence: { message: "ville requise" }
  validates :phone, presence: { message: "téléphone requis" }
  validates :zipcode, presence: { message: "code postal requis" }
  validates :blindtype, presence: { message: "type de produit requis" }
  validates :message, presence: { message: "message requis" }
  validates :address, presence: { message: "adresse requise" }
  belongs_to :product
end
