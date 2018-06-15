class CohortsController < ApplicationController
    before_action :authenticate_admin!
    skip_before_action :verify_authenticity_token, only: [:destroy]
    
    def index
        @cohorts = Cohort.all
    end

    def create
        @course = Course.find(params[:course_id])
        @course.cohorts.create(cohort_params)

        redirect_to courses_path
    end

    def new
        @course = Course.find(params[:course_id])
        @cohort = Cohort.new
    end

    def destroy
        Cohort.destroy(params[:id])
        # we are responding with to the delete with jason
        render json: {status: 'success', message: 'Cohort was removed!'}
    end

    private
    def cohort_params
        params.require(:cohort).permit(:name,:start_date,:end_date,:instructor_id)
    end

end
