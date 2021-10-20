# frozen_string_literal: true

class TraineeCourse < ApplicationRecord
  belongs_to :trainee
  belongs_to :course
end
