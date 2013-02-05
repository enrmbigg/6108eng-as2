Oval::Application.routes.draw do
  
  root :to => 'articles#index'
  get "articles/index"
  get "articles/aboutus"
  get "articles/contactus"
  get "events/event"
  get "events/annoucment"


end
