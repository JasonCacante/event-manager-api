class HomeController < ApplicationController
  def greetings
    render json: { grettings: I18n.t(:hello)}
  end
end
