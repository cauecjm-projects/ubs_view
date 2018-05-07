class HomeController < ApplicationController

  def index
  end

  def buscar_ubs
    lat  = params['latitude']
    long = params['longitude']

    @places = Ubs.near([lat,long], 3)

    render '/home/index'
  end

end
