require './environment'

module FormsLab

  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |ship_detail|
        Ship.new(ship_detail)
      end

      erb :'pirates/show'
    end
    # code other routes/actions here

  end
end
