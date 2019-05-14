class MapController < ApplicationController
  def view
    @place = Place.find_by(name:"BJHS")
  end
end
