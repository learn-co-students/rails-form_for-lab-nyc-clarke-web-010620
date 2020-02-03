class StudentsController < ApplicationController
    def show
        @student = Student.find(params[:id])
    end
    
    def new
        @student = Student.new 
    end

    def edit
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.create(class_params)
        redirect_to @student
    end

    def update
        @student = Student.update(class_params)
        redirect_to @student
    end
    

    private

    def class_params
        params.require(:student).permit(:first_name, :last_name)
    end
    
end
