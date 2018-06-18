class StudentCohort < ApplicationRecord
    #this allows the method .student to be callin in the instance.
    belongs_to :student 
    #this allows the method .cohort to be callin in the instance.
    belongs_to :cohort
    
end
