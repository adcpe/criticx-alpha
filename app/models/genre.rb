class Genre < ApplicationRecord
  validates :name, uniqueness: true, allow_blank: false
  has_and_belongs_to_many :games
end
