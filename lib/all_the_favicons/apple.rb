# frozen_string_literal: true

module AllTheFavicons
  class Apple < AllTheFavicons::Base
    class << self
      def all
        files(/^apple-.*/).map { |f| icon(f) }
      end

      def default_size
        Vector2d.new(180, 180)
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
