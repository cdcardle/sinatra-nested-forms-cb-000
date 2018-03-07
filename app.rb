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
      pirate = params[:pirate]
      @pirate = Pirate.new(pirate[:name], pirate[:weight], pirate[:height])
      @ships = pirate[:ships].each do |ship|
                Ship.new(ship)
               end

      erb :"pirates/show"
    end

  end
end
