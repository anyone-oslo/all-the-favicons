module AllTheFavicons
  class Tiles < AllTheFavicons::Base
    class << self
      def all
        files.select { |f| f =~ /^mstile/ }
             .map { |f| [tile_name(f), f] }
      end

      private

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
