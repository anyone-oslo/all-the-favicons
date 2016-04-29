module AllTheFavicons
  class Android < AllTheFavicons::Base
    class << self
      def all
        files(/^android-chrome/).map { |f| icon(f) }
      end
    end
  end
end
