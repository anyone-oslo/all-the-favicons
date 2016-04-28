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

   def dimensions(str)
        Vector2d.parse(str.match(/\d+x\d+/)[0]).to_i_vector
      end

      def files
        return [] unless File.exist?(assets_root)
        Dir.entries(assets_root)
           .select { |f| f =~ /\.(jpg|jpeg|png|gif|ico|svg)$/ }
      end
    end
  end
end
