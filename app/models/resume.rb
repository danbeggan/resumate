class Resume < ApplicationRecord
  enum form_steps: {
    personal_information: [:first_name, :last_name, :email, :job_title]
  }
  
  attr_accessor :form_step

  with_options if: -> { required_for_step?(:personal_information) } do
    validates_presence_of :first_name, :last_name, :email, :job_title
  end

  def required_for_step?(step)
    # All fields are required if no form step is present
    return true if form_step.nil?
  
    # All fields from previous steps are required
    ordered_keys = self.class.form_steps.keys.map(&:to_sym)
    !!(ordered_keys.index(step) <= ordered_keys.index(form_step))
  end
end
