class Item < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :name, presence: true
  validates :amount, presence: true
  validates :group, presence: true
end
