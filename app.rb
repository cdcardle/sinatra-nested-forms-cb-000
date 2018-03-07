require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :"pirates/new"
    end

    post '/pirates' do
      new_pirate = Pirate.new
      @pirate = params[pirate]
      @ship1 = params[pirate[ship[0]]]
      @ship2 = params[pirate][ship][0]
      erb :"pirates/show"
    end

  end
end
