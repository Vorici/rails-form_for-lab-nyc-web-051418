class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class))
    @school_class.save
    redirect_to @school_class
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to @school_class
  end

  def destroy
    @school_class.find(params[:id]).delete
  end

  # private
  #
  #   def school_class_params(*args)
  #     params.require(:school_class).permit(*args)
  #   end
end
