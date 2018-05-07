class Ubs < ActiveRecord::Base

  # Vailidations
  validates_presence_of :cod_munic, :cod_cnes, :nom_estab
  validates :cod_munic, length: { in: 6..7 }

  geocoded_by :address, latitude: :vlr_latitude, longitude: :vlr_longitude
  after_validation :geocode, :if => :address_changed?

end
