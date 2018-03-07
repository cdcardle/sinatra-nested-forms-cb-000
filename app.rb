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
      pirate_info = params[pirate]
      @pirate = Pirate.new(pirate_info[name], pirate_info[weight], pirate_info[height])
      @ships = pirate[ships]

      erb :"pirates/show"
    end

  end
end
