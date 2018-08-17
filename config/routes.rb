Rails.application.routes.draw do
  get 'stun/index'
  root 'stun#index'
  resources :imports do
    resources :records
  end

end
