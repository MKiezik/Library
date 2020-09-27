Rails.application.routes.draw do
    get 'books', to: 'books#index', as: 'books'  # get 'URL', to: 'controller#action', as: 'route_name'

    root 'books#index'

    # root command
    # get "/", to: 'books#index', as: 'root'

  end
