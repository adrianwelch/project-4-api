Rails.application.routes.draw do

  get 'skyscanner/flights'

  scope :api do
    resources :comments
    resources :legs
    resources :trips
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    get '/flights', to: 'skyscanner#flights'
    post 'oauth/github', to: 'oauth#github'
  end
end
