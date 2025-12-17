# frozen_string_literal: true

module AllTheFavicons
  class Tiles < AllTheFavicons::Base
    class << self
      def all
        files(/^mstile/).map { |f| ms_icon(f) }
      end

      def tile_image
        files(/^mstile-/).first
      end

      def tile_image?
        tile_image ? true : false
      end

      private

      def default_size
        Vector2d.new(150, 150)
      end

      def ms_icon(name)
        icon(name).merge(name: tile_name(name))
      end

      def square?(vector)
        vector.x == vector.y
      end

      def tile_name(name)
        "#{square?(dimensions(name)) ? 'square' : 'wide'}#{dimensions(name)}logo"
      end
    end
  end
end
