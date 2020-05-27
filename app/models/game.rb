class Game < ApplicationRecord
  validates :name, :category, allow_blank: false
  validates :name, uniqueness: true
  validates :rating, numericality: {
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 100,
  }
  validates :validate_game_id

  has_many :involved_companies
  has_many :companies, through: :involved_companies

  has_and_belongs_to_many :platforms
  has_and_belongs_to_many :genres

  has_many :expansions, class_name: "Game", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Game", optional: true

  has_many :reviews, as: :reviewable

  enum category: { main_game: 0, expansion: 1 }

  private

  def validate_game_id
    if category == 'expansion' && parent.nil?
      errors.add(:game_id, 'parent game not found')
    end
  end
end
