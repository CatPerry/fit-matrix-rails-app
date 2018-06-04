class Exercise < ApplicationRecord
  has_many :users
  has_many :workout_routines
end
