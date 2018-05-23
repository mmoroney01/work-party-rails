Rails.application.routes.draw do
  devise_for :users

  root :controller => 'index', :action => 'index'

  get '/' => 'parties#index'
  get '/parties/:id' => 'parties#show'

  post '/parties' => 'parties#create'
  post '/tasks' => 'tasks#create'

  delete '/parties/:id' => 'parties#delete'
  delete '/tasks/:id' => 'tasks#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
