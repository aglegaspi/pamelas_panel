class StundentcohortsController < ApplicationController

    def create

        @student = Student.find(params[:course_id])
        @student.student_cohorts.create(stu_cohort_params)

        redirect_to students_path
    end

    def new
        @student = Student.find(params[:course_id])
        @stu_cohort = StudentCohort.new
    end

    private
    def stu_cohort_params
        
        params.require(:student_cohort).permit(:name)
    end
end
