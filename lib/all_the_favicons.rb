# encoding: utf-8

require "vector2d"

require "all_the_favicons/engine"
require "all_the_favicons/base"
require "all_the_favicons/android"
require "all_the_favicons/tiles"
require "all_the_favicons/version"

module AllTheFavicons
  class << self
    attr_accessor :ms_tile_color, :name

    def ms_tile_color
      @ms_tile_color || "#2d89ef"
    end

    def name
      @name || Rails.application.class.parent_name
    end
  end
end
