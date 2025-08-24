class Attendance < ApplicationRecord
  belongs_to :event
  validates :name, presence: true, length: { maximum: 50 }
end
