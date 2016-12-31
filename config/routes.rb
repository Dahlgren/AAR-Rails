Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :missions do
    scope module: :missions do
      resources :events
      resources :players, only: [:index]
    end
  end

  resources :players, only: [:index]
end
