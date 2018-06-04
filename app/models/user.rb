class User < ApplicationRecord
  has_many :exercises
  has_many :workout_routines, through: :plans
end
