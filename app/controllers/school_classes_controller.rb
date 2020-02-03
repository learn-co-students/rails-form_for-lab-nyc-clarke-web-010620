class SchoolClassesController < ApplicationController

    def show
        @class = SchoolClass.find(params[:id])
    end
    
    def new
        @class = SchoolClass.new 
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def update
        @class = SchoolClass.update(class_params)
        redirect_to @class
    end


    def create
        @class = SchoolClass.create(class_params)
        redirect_to @class
    end
    

    private

    def class_params
        params.require(:school_class).permit(:title, :room_number)
    end
    
end
