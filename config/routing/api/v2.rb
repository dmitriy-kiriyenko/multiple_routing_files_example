concern :api_v2 do
  resource :sessions, only: [:new, :create, :delete]
  resource :posts do
    resource :comments
  end
end
