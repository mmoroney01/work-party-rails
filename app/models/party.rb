class Party < ApplicationRecord
  validates :time, presence: true
  validates :place, presence: true
  validates :user_id, presence: true
end
