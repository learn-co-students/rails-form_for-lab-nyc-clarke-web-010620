class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def show
        @student = find_student
    end

    def new
        @student = Student.new
    end

    def create
        student = Student.create(student_params)
        redirect_to student_path(student)
    end

    def edit
        @student = find_student
    end

    def update
        student = find_student
        student.first_name = student_params[:first_name]
        student.last_name = student_params[:last_name]
        student.save
        redirect_to student_path(student)
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def find_student
        @student = Student.find(params[:id])
    end
end
