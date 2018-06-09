class CohortsController < ApplicationController

    def create

        @course = Course.find(params[:course_id])
        @course.cohorts.create(cohort_params)

        redirect_to courses_path
    end

    def new
        @course = Course.find(params[:course_id])
        @cohort = Cohort.new
    end

    private
    def cohort_params
 
        params.require(:cohort).permit(:name,:start_date,:end_date,:instructor_id)
    end

end
