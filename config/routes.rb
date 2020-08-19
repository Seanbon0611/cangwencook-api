Rails.application.routes.draw do
  #admin
  get 'admin/data', to: "users#admin_data"
  #user
  get 'user/profile', to: "users#data"
  post 'user/new', to: "users#create"
  patch 'user/profile', to: 'users#update_profile'
  #order
  post 'order/new', to: "orders#create"
  post 'order/complete', to: "orders#complete_order"
  #lineitems
  post 'lineitem/new', to: "lineitems#create"
  patch 'lineitem/remove', to: "lineitems#reduce_quantity"
  #recipes
  get 'recipes', to: "recipes#index"
  post 'recipe/new', to: "recipes#new"
  #stripe
  post 'secret', to: "stripe#payment"
  #product
  get 'products', to: "products#index"
  post 'products/new', to: 'products#create'
  
  #auth
  post 'login', to: 'auth#login'
  get 'autologin', to: 'auth#auto_login'
  delete 'signout', to: 'auth#logout'

  #password reset
  post 'forgot_password', to: 'password_resets#create'
  get 'token', to: 'password_resets#user_token'
  patch 'reset_password', to: 'password_resets#reset'
end
