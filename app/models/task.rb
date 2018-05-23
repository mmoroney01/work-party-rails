class Task < ApplicationRecord
  belongs_to :party
  
  validates :description, presence: true
  validates :guest_name, presence: true
  validates :phone_number, presence: true
  validates :party_id, presence: true
end
