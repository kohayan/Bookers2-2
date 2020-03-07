Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_for :users

root 'books#top'

get 'home/about' => 'books#about'

resources :books

resources :users

end
