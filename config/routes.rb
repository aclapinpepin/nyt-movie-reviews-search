Rails.application.routes.draw do
  root 'homes#show'

  get 'homes' => 'homes#show'
end
