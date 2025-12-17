# frozen_string_literal: true

class FaviconsController < ApplicationController
  def browserconfig
    @tile_color = AllTheFavicons.ms_tile_color
    @tiles = AllTheFavicons::Tiles.all
  end

  def manifest
    render json: manifest_data.to_json
  end

  def favicon
    redirect_to asset_path("favicon.ico")
  end

  private

  def manifest_data
    { name: AllTheFavicons.name,
      short_name: AllTheFavicons.short_name,
      background_color: AllTheFavicons.background_color,
      theme_color: AllTheFavicons.theme_color,
      icons: AllTheFavicons::Android.all.map { |i| android_icon(i) },
      display: "standalone" }
  end

  def android_icon(icon)
    icon.merge(src: asset_path(icon[:src]))
  end

  def asset_path(path)
    ActionController::Base.helpers.asset_path(path)
  end
end
