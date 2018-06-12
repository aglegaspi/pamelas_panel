class Student < ApplicationRecord
    has_many :student_cohorts, dependent: :destroy
    has_many :cohorts, through: :student_cohorts
end
