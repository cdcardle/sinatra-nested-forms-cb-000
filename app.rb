require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      pirate = params[pirate]
      @pirate = Pirate.new(pirate[name], pirate[weight], pirate[height])
      ships = pirate[ships]
      @ship1 = Ship.new(ships[0][name], ships[0][type], ships[0][booty])
      @ship2 = Ship.new(ships[1][name], ships[1][type], ships[1][booty])
      erb :"pirates/show"
    end

  end
end
