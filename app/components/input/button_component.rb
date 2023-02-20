# frozen_string_literal: true

class Input::ButtonComponent < ViewComponent::Base
  def initialize(text:)
    @text = text
  end
end
