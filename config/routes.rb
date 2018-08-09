Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :cocktails, only: [:index, :show, :new, :create, :update, :destroy] do
    resources :ingredients, only: [:index, :show, :new, :create, :update, :destroy]
    resources :doses, only: [:index, :show, :new, :create, :update, :destroy]
  end
end
