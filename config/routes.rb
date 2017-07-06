Rails.application.routes.draw do
  resources :listings
  namespace :api do
  	namespace :v1 do
  		mount_devise_token_auth_for 'User', at: 'auth'
  	end	
  end	
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
