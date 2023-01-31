class Shift < ApplicationRecord
  validates :start_time,       presence: true
  validates :finish_time,      presence: true
end
