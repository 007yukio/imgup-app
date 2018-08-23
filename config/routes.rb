Rails.application.routes.draw do
  
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :favorites, only: [:create, :destroy]
  
  resources :users
  
  resources :blogs, only: [:index, :new, :create, :edit, :update, :show, :destroy]do
    collection do
      post :confirm
    end
  end
  
  get 'favorites', to: 'favorites#show'
  root 'users#new'
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end
