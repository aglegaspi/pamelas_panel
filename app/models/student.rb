class Student < ApplicationRecord
    has_many :student_cohorts
    has_many :cohorts, through: :student_cohorts
end
