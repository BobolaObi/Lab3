# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  email          :string
#  street_address :string
#  city           :string
#  province       :string
#  postal_code    :string
#  country        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class User < ApplicationRecord
  has_many :microposts
  validates :first_name, :last_name, :email, presence: true
end
