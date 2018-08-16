Rails.application.routes.draw do
  resources :imports

  get    '/records',          to: 'records#index', as: 'records'
  post   '/records',          to: 'records#create'
  get    '/records/new',      to: 'records#new',   as: 'new_record'
  get    '/records/:id',      to: 'records#show',  as: 'record'
  get    '/records/:id/edit', to: 'records#edit',  as: 'edit_record'
  patch  '/records/:id',      to: 'records#update'
  delete '/records/:id',      to: 'records#destroy'
  
end
