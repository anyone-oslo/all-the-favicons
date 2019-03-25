# encoding: utf-8

require "vector2d"

require "all_the_favicons/engine"
require "all_the_favicons/base"
require "all_the_favicons/android"
require "all_the_favicons/apple"
require "all_the_favicons/favicons"
require "all_the_favicons/tiles"
require "all_the_favicons/version"

module AllTheFavicons
  class << self
    attr_accessor :background_color, :ms_tile_color, :name,
                  :pinned_tab_color, :theme_color, :short_name

    def background_color
      @background_color || "#ffffff"
    end

    def ms_tile_color
      @ms_tile_color || "#2d89ef"
    end

    def name
      @name || Rails.application.class.parent_name
    end

    def short_name
      @short_name || name
    end

    def pinned_tab_color
      @pinned_tab_color || "#000000"
    end

    def theme_color
      @theme_color || "#ffffff"
    end
  end
end
