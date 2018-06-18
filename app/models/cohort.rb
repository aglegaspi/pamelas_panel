class Cohort < ApplicationRecord
  #this allows the method course to be called in your instance
  belongs_to :course
  #this allows the method instructor to be called in your instance
  belongs_to :instructor

  #this allows the method student_cohorts to be called in your instance
  has_many :student_cohorts, dependent: :destroy
  #this allows the method students to be called in your instance
  has_many :students, through: :student_cohorts
end
