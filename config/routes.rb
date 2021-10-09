Rails.application.routes.draw do
  resources :people
  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"

  root :to => "welcome#index"

  match ':controller(/:action(/:id(.:format)))', :via => :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
