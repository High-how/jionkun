class Member < ApplicationRecord
  has_many :user_members
  has_many :users, through: :user_members
  validates :name, presence: true, uniqueness: true
end
