class ResumeStepsController < Wicked::WizardController
  steps :personal_information, :employment_history

  def show
    @resume = Resume.last
    render_wizard
  end

  def update
    @resume = Resume.last
    @resume.assign_attributes resume_params
    render_wizard @resume
  end

  private

  # Only allow the params for specific attributes allowed in this step
  def resume_params
    params.require(:resume).permit(Resume.form_steps[step]).merge(form_step: step.to_sym)
  end

  def finish_wizard_path
    resume_path(@resume)
  end


end
