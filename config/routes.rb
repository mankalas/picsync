Rails.application.routes.draw do
  resources :scans
  resources :local_directories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
