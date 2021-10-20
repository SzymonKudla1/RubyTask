# frozen_string_literal: true

class Trainee < ApplicationRecord
  has_many :trainee_courses
  has_many :courses, through: :trainee_courses
end
