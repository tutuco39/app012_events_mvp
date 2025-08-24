class Event < ApplicationRecord
  has_many :attendances, dependent: :destroy

  validates :title, :starts_at, presence: true
  validate :ends_after_start

  scope :upcoming, -> { where("starts_at >= ?", Time.current).order(:starts_at) }

  def seats_left
    return nil unless capacity.present?
    capacity - attendances.count
  end

  private

  def ends_after_start
    return if starts_at.blank? || ends_at.blank?
    errors.add(:ends_at, "は開始時刻より後にしてください") if ends_at <= starts_at
  end
end
