module AllTheFavicons
  class Android < AllTheFavicons::Base
    class << self
      def all
        files.select { |f| f =~ /^android-chrome/ }
             .map { |f| icon(f) }
      end

      private

      def density(str)
        dimensions(str).x / 48.0
      end

      def icon(f)
        {
          src: f,
          sizes: dimensions(f).to_s,
          type: content_type(f),
          density: density(f)
        }
      end
    end
  end
end
