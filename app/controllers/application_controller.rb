class ApplicationController < ActionController::API
  before_action :switch_local
  def switch_local
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
