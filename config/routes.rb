Rails.application.routes.draw do
root 'index#index'

get 'index' => 'create#create'

resources :index
end
