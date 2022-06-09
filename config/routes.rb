Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'

  get '/get_all_cats', to: 'example#get_all_cats'
  get '/get_a_cat', to: 'example#get_a_cat'
  get '/servicenow', to: 'example#servicenow'

end
