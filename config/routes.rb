Rails.application.routes.draw do
  devise_for :users
  #devise_for :users
  root :to => "products#index"
  resources :products
#   resources :users do
# end
  resource :carts, only:[:show, :destroy] do
    collection do
      post :add,to: 'carts#add'
      # post :add, path:'add/:id'
    end
  end




  # resource :carts, only:[:show, :destroy] do
  #   collection do
  #     post :add, path:'add/:id'
  #   end
  # end
end
