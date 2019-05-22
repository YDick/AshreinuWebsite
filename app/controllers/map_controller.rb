class MapController < ApplicationController
  def view
    @maps_api_key = Figaro.env.google_maps_api_key
    puts ".....................................#{@maps_api_key} #{@byjs}"
    @bjhs = Place.find_by(name:"BJHS")
    @overnight = Place.find_by(name:"Overnight")
  end
end
