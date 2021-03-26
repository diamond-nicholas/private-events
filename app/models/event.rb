class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendances

  def self.past_event
    event.where("date > ?", DateTime.now)
  end

  def self.future_event
    event.where("date < ?", DateTime.now)
  end
end
