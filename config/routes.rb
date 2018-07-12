Rails.application.routes.draw do
  resources :format_csv, only: [:index, :create]

  root to: 'format_csv#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
