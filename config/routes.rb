Rails.application.routes.draw do
  resources :master_services do
    resources :services, only: [:new, :create, :index]
  end

  resources :services, only: [:show, :edit, :update, :destroy] do
    resources :sub1_services, only: [:new, :create, :index]
  end

  resources :sub1_services, only: [:show, :edit, :update, :destroy] do
    resources :sub2_services, only: [:new, :create, :index]
  end

  resources :sub2_services, only: [:show, :edit, :update, :destroy]
end
