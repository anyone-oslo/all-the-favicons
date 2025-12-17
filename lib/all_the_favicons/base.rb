# frozen_string_literal: true

module AllTheFavicons
  class Base
    class << self
      private

      def assets_root
        Rails.root.join("app/assets/favicons")
      end

      def content_type(str)
        content_types[File.extname(str.downcase)]
      end

      def content_types
        { ".gif" => "image/gif",
          ".ico" => "image/x-icon",
          ".svg" => "image/svg+xml",
          ".png" => "image/png",
          ".jpg" => "image/jpeg",
          ".jpeg" => "image/jpeg" }
      end

      def default_size
        raise "Default size missing"
      end

      def density(str)
        dimensions(str).x / 48.0
      end

      def dimensions?(str)
        str.match?(/\d+x\d+/)
      end

      def dimensions(str)
        return default_size unless dimensions?(str)

        Vector2d.parse(str.match(/\d+x\d+/)[0]).to_i_vector
      end

      def files(expr = nil)
        return [] unless File.exist?(assets_root)

        files = Dir.entries(assets_root)
                   .grep(/\.(jpg|jpeg|png|gif|ico|svg)$/)
        return files unless expr

        files.grep(expr)
      end

      def icon(name)
        { src: name,
          sizes: dimensions(name).to_s,
          type: content_type(name),
          density: density(name) }
      end
    end
  end
end
