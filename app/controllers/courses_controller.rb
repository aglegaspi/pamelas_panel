class CoursesController < ApplicationController
    before_action :authenticate_admin!
    def index
        @courses = Course.all
        @cohorts = Cohort.all
    end

    def create
        Course.create(course_params)
        redirect_to courses_path
    end

    def new
        @course = Course.new
    end

    def edit 
        @course = Course.find(params[:id])
    end

    def show 
        @course = Course.find(params[:id])
    end

    def update
        course = Course.find(params[:id])
        course.update(course_params)
        
        redirect_to courses_path
    end

    def destroy
        Course.destroy(params[:id])
        redirect_to courses_path
    end

    private
    def course_params

        params.require(:course).permit(:name,:total_hours)
    end

end
