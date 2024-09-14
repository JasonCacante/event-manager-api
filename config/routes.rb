Rails.application.routes.draw do
  
  get "up" => "rails/health#show", as: :rails_health_check

  scope '(:locale)', locale: /es|en/ do
    get "home/greetings"
  end
end
