Rails.application.routes.draw do
  root 'homes#show'

  resource :search, only: [:show]
end
