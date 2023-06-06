class Group < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :icon, presence: true

  has_many :item
end
