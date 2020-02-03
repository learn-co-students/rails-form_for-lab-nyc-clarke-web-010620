class SchoolClassesController < ApplicationController
  def show
  @school_class = SchoolClass.find(params[:id])
  end
 
  def new
  @school_class = SchoolClass.new  
  end

  def create
  @school_class =SchoolClass.create(params.require())
  end

  def edit
  end

  def update
  end

  private 

  def strong_params 
  params.require(:school_class)
  end 
end
