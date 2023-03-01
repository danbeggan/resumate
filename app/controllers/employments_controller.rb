class EmploymentsController < ApplicationController
  before_action :set_employment, only: [:show, :edit, :update, :destroy]
  
  def index
    @employments = Employment.all
  end

  def show
  end

  def new
    @employment = Employment.new
  end

  def create
    @employment = Employment.new(employment_params)

    if @employment.save
      redirect_to employments_path, notice: "Employment was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @employment.update(employment_params)
      redirect_to employments_path, notice: "Employment was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @employment.destroy
    redirect_to employments_path, notice: "Employment was successfully destroyed."
  end

  private
  
  def set_employment
    @resume = Resume.find(params[:resume_id])
    @employment = Employment.find(params[:id])
  end

  def employment_params
    params.require(:employment).permit(:job_title, :resume_id)
  end
end
