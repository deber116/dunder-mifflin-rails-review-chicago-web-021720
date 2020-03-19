Rails.application.routes.draw do
  # Based on your current controller actions, you could add options to be more specific
  resources :dogs#, only: [:index, :show]
  resources :employees#, except: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
