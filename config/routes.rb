Rails.application.routes.draw do

  resources :artists, only: [:show] do
    # nested resource for songs
    resources :songs, only: [:show, :index]
  end

  resources :songs, only: [:new, :create, :edit, :update]

  root 'songs#index'
end
