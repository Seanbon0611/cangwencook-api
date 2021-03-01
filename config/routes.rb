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
  post 'recipes/new', to: "recipes#create"
  patch 'recipes/:id/edit', to: "recipes#update"
  delete 'recipes/:id/delete', to: "recipes#delete_recipe"
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

  post 'images/direct_upload', to: "uploads#create"
  
  #active campaign
  post 'new_contact', to: 'active_campaign#new_contact'
  get 'all_contacts', to: 'active_campaign#all_contacts'
  post 'tag', to: 'active_campaign#add_tag_to_contact'

  #feedback
  post 'feedback', to: 'feedback#create'

  #collaborate
  post 'collaborate', to: 'collaborate#create'
end
