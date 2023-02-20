# frozen_string_literal: true

class Form::TextInputComponent < ViewComponent::Base
  def initialize(form:, name:, model: nil)
    @form = form
    @name = name
    @model = model
  end
end
