class InvolvedCompany < ApplicationRecord
  validates :developer, :publisher, allow_blank: false

  belongs_to :company
  belongs_to :game
end
