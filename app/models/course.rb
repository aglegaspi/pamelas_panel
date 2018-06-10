class Course < ApplicationRecord
  has_many :cohorts
  # because of this you can call cohorts via couses e.g. cohort.cohorts.all
end
