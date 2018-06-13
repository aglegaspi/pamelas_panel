class StudentsController < ApplicationController
    before_action :authenticate_admin!

    def index
        @admin = current_admin
        @students = Student.all
    end

    def create

        @student = Student.create(student_params)

        if my_student.valid?
            flash[:success] = 'The student has been added'
            redirect_to students_path
            #redirect when successful
        end

        if my_student.invalid?
            flash[:error] = 'You are missing information chile!'
            render :new
            #render when unsuccesful and input missing
        end

        
    end

    def new

        @student = Student.new
    end

    def edit 

        @student = Student.find(params[:id])
    end

    def show 
        @student = Student.find(params[:id])
    end

    def update
        student = Student.find(params[:id])
        student.update(student_params)
        
        redirect_to students_path
    end

    def destroy
        Student.destroy(params[:id])
        redirect_to students_path
    end

    private
    def student_params
        #will return somethine that looks like this:
        #{name: '...', :description: '...'}
        params.require(:student).permit(:first_name,:last_name,:birthday,:highest_education)
    end

end
