class TripsController < ApplicationController
  
 
  
  def index
            @map = GMap.new("map_div")
            @map.control_init(:large_map => true,:map_type => true)
            @map.center_zoom_init([75.5,60],4)
            @map.overlay_init(GMarker.new([75.6,60],:title => "Hello", :info_window => "Info! Info!"))
  end

end
