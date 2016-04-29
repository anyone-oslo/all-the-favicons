module FaviconsHelper
  def all_the_favicons
    icons = apple_favicons + standard_favicons + [
      tag(:link, rel: "manifest", href: favicons_manifest_path),
      pinned_tab_favicon,
      tag(:meta,
          name: "msapplication-TileColor",
          content: AllTheFavicons.ms_tile_color),
      tile_image_favicon,
      tag(:meta, name: "theme-color", content: AllTheFavicons.theme_color)
    ]
    safe_join(icons.compact, "\n")
  end

  private

  def apple_favicons
    AllTheFavicons::Apple.all.map do |i|
      tag(:link,
          rel: "apple-touch-icon",
          sizes: i[:sizes],
          href: asset_path(i[:src]))
    end
  end

  def tile_image_favicon
    return nil unless AllTheFavicons::Tiles.tile_image?
    tag(:meta,
        name: "msapplication-TileImage",
        content: asset_path(AllTheFavicons::Tiles.tile_image))
  end

  def pinned_tab_favicon
    return nil unless AllTheFavicons::Apple.pinned_tab_icon?
    tag(:link,
        rel: "mask-icon",
        href: asset_path(AllTheFavicons::Apple.pinned_tab_icon),
        color: AllTheFavicons.pinned_tab_color)
  end

  def standard_favicons
    AllTheFavicons::Favicons.all.map do |i|
      tag(:link,
          rel: "icon",
          type: i[:type],
          sizes: i[:sizes],
          href: asset_path(i[:src]))
    end
  end
end
