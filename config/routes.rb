Rails.application.routes.draw do
  resources :users
    get   'books',          to: 'books#index',  as: 'books'  # get 'URL', to: 'controller#action', as: 'route_name'
    get   'books/new',      to: 'books#new',    as: 'new_book'
    get   'books/:id',      to: 'books#show',   as: 'book'
    post  'books',          to: 'books#create'
    get   'books/:id/edit', to: 'books#edit',   as: 'edit_book'
    patch 'books/:id',      to: 'books#update'

    delete 'books/:id',     to: 'books#destroy', as: 'delete_book'

    root 'books#index'

    get '/auth/:provider/callback', to: 'sessions#omniauth' # comming back route

    # root command
    # get "/", to: 'books#index', as: 'root'

  end
