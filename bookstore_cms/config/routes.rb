Rails.application.routes.draw do
  root 'categories#index'
  get 'categories/index'
    # (simple match route) match "categories/index", :to => "demo#index", :via => :get
    # GET /students/edit/52 StudentController, edit action, id =52
    # Default Route Structure :controller/:action/:id
    # get ':controller(/:action(/:id))'
  get 'categories/show'
  get 'categories/new'
  get 'cart/index'
  get 'cart/show'
  get 'user/index'
  get 'user/show'
  get 'user/new'
  get 'book/index'
  get 'book/show'
  get 'book/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
