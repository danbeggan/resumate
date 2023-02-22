# frozen_string_literal: true

class Form::TextAreaComponent < ViewComponent::Base

  def initialize(form:, name:)
    @form = form
    @name = name
  end
end
