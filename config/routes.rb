Rails.application.routes.draw do
  get '/' => 'people#index'
  get '/people' => 'people#index'

  namespace :api do
    namespace :v1 do
      get '/people' => 'people#index'
      post '/people' => 'people#create'
      # get '/people/:id' => 'people#show'

      # patch '/people/:id' => 'people#update'
      # delete '/people/:id' => 'people#destroy'
    end
  end
end
