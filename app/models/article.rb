class Article < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews, dependent: :destroy
  CATEGORY = ["Bourse", "Cryptomonnaie", "Epargne", "Immobilier"]
end
