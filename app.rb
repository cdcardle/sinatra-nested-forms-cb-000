require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :"pirates/new"
    end

    post '/pirates' do
      puts params
      erb :"pirates/show"
    end

  end
end
