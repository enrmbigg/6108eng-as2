Oval::Application.routes.draw do
  
  root :to => 'articles#index'
  resources :events
  get "articles/index"
  get "articles/aboutus"
  get "articles/contactus"
  get "events/index"
  get "events/annoucment"
  
end
