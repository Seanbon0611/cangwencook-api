Rails.application.routes.draw do
  #admin
  get 'admin/data', to: "users#admin_data"
  #user
  get 'user/profile', to: "users#data"
  post 'user/new', to: "users#create"
  patch 'user/profile', to: 'users#update_profile'
  #product
  get 'products', to: "products#index"
  post 'products/new', to: 'products#create'
  
  #auth
  post 'signin', to: 'auth#login'
  get 'autologin', to: 'auth#auto_login'
  delete 'signout', to: 'auth#logout'
end
