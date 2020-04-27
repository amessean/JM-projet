class Article < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  CATEGORY = ["Bourse", "Crypto", "Epargne", "Immobilier"]
end
