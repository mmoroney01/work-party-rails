class Task < ApplicationRecord
  validates :description, presence: true
  validates :guest_name, presence: true
  validates :party_id, presence: true
end
