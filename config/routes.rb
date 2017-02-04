Rails.application.routes.draw do

  get 'products/index'

  get 'products' => 'products#products'   #do I need this?  what's this?

  get 'products/new'

  get 'products/:id' => 'products#show'

  get 'products/:id/edit' => 'products#edit'

  patch 'products/:id' => 'products#update'

  post 'products' => 'products#create'

  delete 'products/:id' => 'products#destroy'

end