Rails.application.routes.draw do
  namespace :v1 do
    resources :users
    resources :product_back_logs
  end
end
