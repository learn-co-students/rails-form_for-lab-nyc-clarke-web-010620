class SchoolClassesController < ApplicationController
    def index
        @sclasses = SchoolClass.all
    end

    def show
        @sclass = find_class
    end

    def new
        @sclass = SchoolClass.new
    end

    def create
        school_class = SchoolClass.create(class_params)
        redirect_to school_class_path(student)
    end

    def edit
        @sclass = find_class
    end

    def update
        sclass = find_class
        sclass.title = class_params[:title]
        sclass.room_number = class_params[:room_number]
        sclass.save
        redirect_to school_class_path(sclass)
    end

    private

    def class_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def find_class
        @sclass = SchoolClass.find(params[:id])
    end
end
