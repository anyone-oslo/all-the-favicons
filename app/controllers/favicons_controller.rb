class FaviconsController < ActionController::Base
  def browserconfig
    @tile_color = AllTheFavicons.ms_tile_color
    @tiles = AllTheFavicons::Tiles.all
  end
end
