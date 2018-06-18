class StudentCohortsController < ApplicationController
    before_action :authenticate_admin!
    skip_before_action :verify_authenticity_token, only: [:destroy]
    
    def create

        @student = Student.find(params[:student_id])
        @student.student_cohorts.create(stu_cohort_params)

        redirect_to students_path
    end

    def new
        @student = Student.find(params[:student_id])
        @stu_cohort = StudentCohort.new
    end

    def destroy
        StudentCohort.destroy(params[:id])
        # we are responding with to the delete with jason
        render json: {status: 'success', message: 'Student was removed!'}
    end

    private
    def stu_cohort_params
        params.require(:student_cohort).permit(:student_id,:cohort_id)
    end

end
