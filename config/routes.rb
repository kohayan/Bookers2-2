Rails.application.routes.draw do
  get 'chat/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_for :users, :controllers => {
    :registrations => 'users/registrations'
}

root 'books#top'

get 'home/about' => 'books#about'

get 'search' => 'search#search', as: 'saerch'

resources :users do
	member do
		get :following, :followers
	end
end

  resources :chats, only: [:create, :show]


resources :books do
	resource :favorites, only:[:create, :destroy]
	resources :book_comments, only:[:create, :destroy]
end

resources :relationships, only:[:create, :destroy]

end
