Rails.application.routes.draw do
  root 'home#index'

  get '/already_cv_sent' => 'home#already_cv_sent'
end
