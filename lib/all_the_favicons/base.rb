module AllTheFavicons
  class Base
    class << self
      private

      def assets_root
        Rails.root.join("app", "assets", "favicons")
      end

      def content_type(str)
        case File.extname(str.downcase)
        when ".gif"
          "image/gif"
        when ".ico"
          "image/x-icon"
        when ".svg"
          "image/svg+xml"
        when ".png"
          "image/png"
        when ".jpg", ".jpeg"
          "image/jpeg"
        end
      end

      def density(str)
        dimensions(str).x / 48.0
      end

      def dimensions(str)
        Vector2d.parse(str.match(/\d+x\d+/)[0]).to_i_vector
      end

      def files(expr = nil)
        return [] unless File.exist?(assets_root)
        files = Dir.entries(assets_root)
                   .select { |f| f =~ /\.(jpg|jpeg|png|gif|ico|svg)$/ }
        return files unless expr
        files.select { |f| f =~ expr }
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
