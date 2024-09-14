# frozen_string_literal: true

# Controller that will be used to render the greetings message
class HomeController < ApplicationController
  def greetings
    render json: { grettings: I18n.t(:hello) }
  end
end
