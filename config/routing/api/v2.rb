concern :api_v2 do
  resources :sessions, only: [:new, :create, :delete]
  resources :posts do
    resources :comments
  end
end
