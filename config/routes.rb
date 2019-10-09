Rails.application.routes.draw do
  root 'questions#index'
  resources :questions, only: [:index, :show, :new, :create, :edit, :update] do
    resources :answers, only: [:index, :create]
  end  

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
