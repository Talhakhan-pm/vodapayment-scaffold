Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root "static_pages#index"

  get 'static_pages/index'
  get 'static_pages/about'
  get 'static_pages/pricing'
end
