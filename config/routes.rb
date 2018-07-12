Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"

  resources :posts

  namespace 'api' do
    post '/posts', to: 'posts#create'
    get 'test1', to: 'posts#new'
  end
end
