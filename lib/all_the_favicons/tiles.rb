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

      def ms_icon(f)
        icon(f).merge(name: tile_name(f))
      end

      def square?(v)
        v.x == v.y
      end

      def tile_name(f)
        (square?(dimensions(f)) ? "square" : "wide") +
          dimensions(f).to_s +
          "logo"
      end
    end
  end
end
