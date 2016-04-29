module AllTheFavicons
  class Favicons < AllTheFavicons::Base
    class << self
      def all
        files(/^(favicon.*\d+x\d+|android-chrome-192x192)/).map { |f| icon(f) }
      end
    end
  end
end
