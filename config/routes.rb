Rails.application.routes.draw do
  devise_for :users

  get '/' => 'index#index'
  get '/parties/:id' => "parties#show"
  post '/parties' => "parties#create"
  delete '/parties/:id' => "parties#delete"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
