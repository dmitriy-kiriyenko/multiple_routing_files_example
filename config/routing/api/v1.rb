concern :api_v1 do
  resources :sessions, only: [:new, :create, :delete]
  resources :posts
end
