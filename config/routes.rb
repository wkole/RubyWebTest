Rails.application.routes.draw do
  get 'applicants/destroy'

  get 'sessions/new'

  post 'sessions/create'
  get 'sessions/destroy'
  get 'applicants/new'

  post 'applicants/create'

  resources :users
  get 'home/index'

  # get 'wiki/show_tag' => 'wikis#showTag'
  resources :wikis do
    get 'showTag'
    get 'showUser'
  end
  root :to => "wikis#index"
  get 'home/index'
  get 'home/show' => 'home#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
