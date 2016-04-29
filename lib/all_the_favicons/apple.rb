module AllTheFavicons
  class Apple < AllTheFavicons::Base
    class << self
      def all
        files(/^apple.*\d+x\d+/).map { |f| icon(f) }
      end

      def pinned_tab_icon
        files(/^safari-pinned-tab/).first
      end

      def pinned_tab_icon?
        pinned_tab_icon ? true : false
      end
    end
  end
end
