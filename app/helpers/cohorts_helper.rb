module CohortsHelper

    def cohorts_for_select
        Cohort.all.collect { |i| [i.name, i.id] }
    end

end
