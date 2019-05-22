class MapController < ApplicationController
  def view
    @maps_api_key = Figaro.env.google_maps_api_key
    puts ".....................................#{@maps_api_key}"
    @bjhs = Place.find_by(name:"BJHS")
    puts ".....................................#{@bjhs}"
    @overnight = Place.find_by(name:"Overnight")
    puts ".....................................#{@overnight}"
  end
end
