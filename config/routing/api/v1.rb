concern :api_v1 do
  resource :sessions, only: [:new, :create, :delete]
  resource :posts
end
