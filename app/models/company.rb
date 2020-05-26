class Company < ApplicationRecord
  validates :name, :country, allow_blank: false
  validates :name, uniqueness: trueOS: Arch Linux x86_64 
                `+oooo:                  Host: UX330UAK 1.0 


  has_many :involved_companies
  has_many :games, through: :involved_companies

  has_many :reviews, as: :reviewable
end
