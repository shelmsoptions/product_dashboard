Rails.application.routes.draw do

  get 'products' => 'products#index'

  get 'products/new'

  get 'products/:id' => 'products#show'

  get 'products/:id/edit' => 'products#edit'

  patch 'products/:id' => 'products#update'

  post 'products' => 'products#create'

  delete 'products/:id' => 'products#destroy'

end