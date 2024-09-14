# frozen_string_literal: true

# Methods that can be used in all views
module ApplicationHelper
  def payload_test
    JSON.parse(response.body, symbolize_names: true)
  end
end