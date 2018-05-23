class Party < ApplicationRecord
  has_many :tasks
  
  validates :time, presence: true
  validates :place, presence: true
  validates :user_id, presence: true
end
