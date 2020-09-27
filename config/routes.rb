Rails.application.routes.draw do
    get 'books', to: 'books#index', as: 'books'  # get 'URL', to: 'controller#action', as: 'route_name'
  
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
