# frozen_string_literal: true

class Form::SubmitComponent < ViewComponent::Base
  def initialize(form:, name:, icon: nil)
    @form = form
    @name = name
    @icon = icon
  end
end
