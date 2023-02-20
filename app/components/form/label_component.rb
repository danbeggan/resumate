# frozen_string_literal: true

class Form::LabelComponent < ViewComponent::Base
  def initialize(form:, name:, text:)
    @form = form
    @name = name
    @text = text
  end
end
