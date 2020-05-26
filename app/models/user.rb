class User < ApplicationRecord
  validates :username, :email, allow_blank: false

  has_many :reviews
end
