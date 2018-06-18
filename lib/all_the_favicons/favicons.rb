module AllTheFavicons
  class Favicons < AllTheFavicons::Base
    class << self
      def all
        files(/^(favicon.*\d+x\d+|android-chrome-.*)/).map { |f| icon(f) }
      end
    end
  end
end
