class CohortsController < ApplicationController

    def index

        @cohorts = Cohort.all
    end

    def create

        Cohort.create(cohort_params)
        redirect_to cohorts_path
    end

    def new

        @cohort = Cohort.new
    end

    def edit 

        @cohort = Cohort.find(params[:id])
    end

    def show 
        @cohort = Cohort.find(params[:id])
    end

    def update
        cohort = Cohort.find(params[:id])
        cohort.update(cohort_params)
        
        redirect_to cohorts_path
    end

    def destroy
        Cohort.destroy(params[:id])
        redirect_to cohorts_path
    end

    private
    def cohort_params
 
        params.require(:cohort).permit(:name,:start_date,:end_date)
    end

end
