class Micropost < ApplicationRecord
  belongs_to :user
  validates :message, presence: true
end
