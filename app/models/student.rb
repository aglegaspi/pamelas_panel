class Student < ApplicationRecord
    validates :first_name, :last_name, :highest_education, presence: true
    validates :first_name, length: {minimum: 4}
    

    has_many :student_cohorts, dependent: :destroy
    has_many :cohorts, through: :student_cohorts
end
