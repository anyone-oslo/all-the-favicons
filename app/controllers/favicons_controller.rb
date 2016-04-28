class FaviconsController < ActionController::Base
  def browserconfig
    @tile_color = AllTheFavicons.ms_tile_color
    @tiles = AllTheFavicons::Tiles.all
  end

  def manifest
    render json: {
      name: AllTheFavicons.name,
      icons: AllTheFavicons::Android.all.map { |i| android_icon(i) }
    }.to_json
  end

  private

  def android_icon(icon)
    icon.merge(src: asset_path(icon[:src]))
  end

  def asset_path(path)
    ActionController::Base.helpers.asset_path(path)
  end
end
