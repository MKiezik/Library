Rails.application.routes.draw do
    get 'books',     to: 'books#index', as: 'books'  # get 'URL', to: 'controller#action', as: 'route_name'
    get 'books/:id', to: 'books#show',  as: 'book'

    root 'books#index'

    # root command
    # get "/", to: 'books#index', as: 'root'

  end
