module InstructorsHelper

    def instructors_for_select
        Instructor.all.collect { |i| [i.first_name, i.id] }
      end

end
