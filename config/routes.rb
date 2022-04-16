Rails.application.routes.draw do
  resources :fundings
  resources :merchants do
    resources :basic_verifications
    resources :identity_verifications
    resources :business_verifications
  end
  devise_for :users, controllers: { registrations: "registrations" }

  root "static_pages#index"

  get 'static_pages/index'
  get 'static_pages/about'
  get 'static_pages/pricing'
end
