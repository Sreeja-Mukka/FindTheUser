Rails.application.routes.draw do
  resources :users
	root to: 'pages#index'
	resources :students
	resources :faculties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
