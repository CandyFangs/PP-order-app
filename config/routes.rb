Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
  	resources :elements
 	end
  resources :materials do
  	resources :colors
  end
  root 'home#start'
  resources :orders
  resources :categories
end
