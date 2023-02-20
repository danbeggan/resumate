# frozen_string_literal: true

class Input::ButtonComponent < ViewComponent::Base
  def initialize(text:, url:)
    @text = text
    @url = url
  end
end
