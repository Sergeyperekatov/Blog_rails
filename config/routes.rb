Rails.application.routes.draw do
 devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "home#index"
  
  get 'home/index'
  
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resource :contacts, only: [:new, :create], path_names: {:new => ''}

resources :articles do 
	resources :comments
end
resources :users do 
  resources :articles
end



end
