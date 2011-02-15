require 'grape'

module TestApp
  class API < Grape::API
    prefix 'api'
    version 'v1'
    
    helpers do
    end
    
    get '/' do
      { "message" => "TODO - how to reach /api/v1?" }
    end
    
    resources :questions do
      get do
        { "message" => "questions coming soon!", "questions" => [] }
      end
      
      post do
      end
      
      helpers do
      end
      
      get '/:id' do
        { "message" => "questions/#{params[:id]} coming soon!", "question" => {} }
      end
    end
    
  end
end