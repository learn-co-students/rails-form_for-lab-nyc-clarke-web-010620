class SchoolClassesController < ApplicationController
  def show
  @school_class = SchoolClass.find(params[:id])
  end
 
  def new
  @school_class = SchoolClass.new  
  end
  
  def create
    # byebug
    @school_class = SchoolClass.create(strong_params)
    redirect_to school_class_path(@school_class)
  end

  def update
  end

  private 

  def strong_params
  params.require(:school_class).permit(:title, :room_number)
  end 

end
