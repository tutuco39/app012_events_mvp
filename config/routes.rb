Rails.application.routes.draw do
  resources :events do
    resources :attendances, only: [:create, :destroy]
  end
  root "events#index"
end
