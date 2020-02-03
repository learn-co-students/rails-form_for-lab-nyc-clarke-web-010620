class StudentsController < ApplicationController

    def index
        @students = Student.all
    end
    
    def show
        find_student
    end
    
    def new
        @student = Student.new
    end
    
    def create
        # byebug
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end
    
    def edit
        @student = Student.find(params[:id])
    end
    
    def update
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def find_student
        @student = Student.find(params[:id])
    end

end