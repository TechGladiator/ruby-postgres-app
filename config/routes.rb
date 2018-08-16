Rails.application.routes.draw do
  resources :imports

  get    'imports/:import_id/records',          to: 'records#index', as: 'import_records'
  post   'imports/:import_id/records',          to: 'records#create'
  get    'imports/:import_id/records/new',      to: 'records#new',   as: 'new_import_record'
  get    'imports/:import_id/records/:id',      to: 'records#show',  as: 'import_record'
  get    'imports/:import_id/records/:id/edit', to: 'records#edit',  as: 'edit_import_record'
  patch  'imports/:import_id/records/:id',      to: 'records#update'
  delete 'imports/:import_id/records/:id',      to: 'records#destroy'

end
