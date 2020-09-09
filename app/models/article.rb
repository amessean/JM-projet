class Article < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews, dependent: :destroy
  has_rich_text :rich_body
  CATEGORY = ["Bourse", "Cryptomonnaie", "Epargne", "Immobilier"]
end
