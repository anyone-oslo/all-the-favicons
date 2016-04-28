module AllTheFavicons
  class Base
    class << self
      private

      def assets_root
        Rails.root.join("app", "assets", "favicons")
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
