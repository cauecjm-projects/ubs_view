class HomeController < ApplicationController

  def index
  end

  def buscar_ubs
    lat  = params['latitude']
    long = params['longitude']

    @places = Ubs.near([lat,long], 3)
    res     = []

    if not @places.empty?
      @places.each do |place|
        res << {
          lat:       place.vlr_latitude,
          lng:       place.vlr_longitude,
          nom_estab: place.nom_estab,
          endereco:  place.dsc_endereco,
          bairro:    place.dsc_bairro,
          cidade:    place.dsc_cidade,
          tel:       place.dsc_telefone
        }
      end
    end

    render json: res
  end

end
