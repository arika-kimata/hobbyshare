Rails.application.routes.draw do
  devise_for :users

  root 'hobbys#index'

end