Rails.application.routes.draw do
  devise_for :users

  root :controller => 'index', :action => 'index'

  get '/' => 'parties#index'
  get '/party/:id' => "parties#show"

  post '/parties' => "parties#create"
  delete '/parties/:id' => "parties#delete"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
