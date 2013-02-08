Osc::Application.routes.draw do
  get "welcome/index"
  get "welcome/contactus"
  get "welcome/aboutus"
  get "welcome/club"
  get "welcome/login"
  get "welcome/holiday"

  get "events/index"

  get "annoucements/index"
  
  resources :events
  resources :annoucements

  root :to => 'welcome#index'

end
