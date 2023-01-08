Rails.application.routes.draw do
  root "forms#new"
  resources :forms  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete 'forms/:id', to: 'forms#destroy'
  resources :orders
end
