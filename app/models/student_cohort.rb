class StudentCohort < ApplicationRecord
    belongs_to :student 
    belongs_to :cohort
    has_many :students, through: :student_cohorts
    has_many :cohorts, through: :student_cohorts
end
