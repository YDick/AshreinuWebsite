class MapController < ApplicationController
  def view
    @bjhs = Place.find_by(name:"BJHS")
    @overnight = Place.find_by(name:"Overnight")
  end
end
