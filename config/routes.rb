Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # => Syntax: HTTP VERB ('path', TO:CONTROLLER#action)
  get('about', { to: 'pages#about' })
  # but FIRST, create the controller!;
  # command: rails g controller Pages (g = generate) creates a pages controler w/ everything! "Pages" could be "potato"

  # Then create the view !

  # recap: ROUTES, CONTROLLER ACTION, VIEW
end
