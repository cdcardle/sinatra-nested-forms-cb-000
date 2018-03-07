require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = params[pirate]
      erb :"pirates/show"
    end

  end
end
