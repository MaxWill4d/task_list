Rails.application.routes.draw do
root 'index#index'

get 'index' => 'index#create'
patch 'index_update' => 'index#update'

resources :index
end
