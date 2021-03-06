Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/blog'

  get 'pages/contact'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'articles#index'
	resources :articles do
  		resources :comments
    end
    resources :tags
    resources :users

    resources :usersessions, only: [ :new, :create, :destroy ]

	get 'login'  => 'usersessions#new'
	get 'logout' => 'usersessions#destroy'

end
