class User < ApplicationRecord
  has_many :microposts
  validates :first_name, :last_name, :email, presence: true
end
