Rails.application.routes.draw do

    resources :posts
    resources :pages # reemplaza todas las rutas que estan debajo, ya no hay que poner esos 7 metodos de manera manual, aunque eventualmente se va a necesitar hacer manual 
     
  #get  '/pages', to: 'pages#index'
  #post '/pages', to: 'pages#create'
  #get  '/pages/new', to: 'pages#new', as: 'new_page'
  #get  '/pages/:id', to: 'pages#show', as: 'page'
  #get  '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  #patch  '/pages/:id', to: 'pages#update' # cuando los datos se van a actualizar en lugar de ser creador por primera vez se utiliza "patch"
  #delete '/pages/:id', to: 'pages#destroy'
end
