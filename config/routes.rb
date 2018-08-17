Rails.application.routes.draw do
  get 'stun/index'
  resources :imports do
    resources :records
  end

end
