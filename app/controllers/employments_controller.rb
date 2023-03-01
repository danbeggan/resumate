class EmploymentsController < ApplicationController
  def new

  end

  private
  
  def set_employment
    @employment = Employment.find(params[:id])
  end

  def employment_params
    params.require(:employment).permit(:job_title)
  end
end
