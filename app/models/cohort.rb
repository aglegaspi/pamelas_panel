class Cohort < ApplicationRecord
  belongs_to :course
  belongs_to :instructor
  has_many :student_cohorts
  has_many :students, through: :student_cohorts
end
