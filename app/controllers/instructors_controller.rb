class InstructorsController < ApplicationController
    before_action :authenticate_admin!
    
    def index

        @instructors = Instructor.all
    end

    def create

        Instructor.create(instructor_params)
        redirect_to instructors_path
    end

    def new

        @instructor = Instructor.new
    end

    def edit 

        @instructor = Instructor.find(params[:id])
    end

    def show 
        @instructor = Instructor.find(params[:id])
    end

    def update
        instructor = Instructor.find(params[:id])
        instructor.update(instructor_params)
        
        redirect_to instructors_path
    end

    def destroy
        Instructor.destroy(params[:id])
        redirect_to instructors_path
    end

    private
    def instructor_params
        #will return somethine that looks like this:
        #{name: '...', :description: '...'}
        params.require(:instructor).permit(:first_name,:last_name,:birthday,:salary,:highest_education)
    end

end
