# All The Favicons

The favicon sitation is getting out of hand. 25+ variants?
browserconfig.xml? manifest.json?

This gem handles the Rails stuff, all you need to do is generate the images.

## Usage

Add `all-the-favicons` to your Gemfile:

``` ruby
gem "all-the-favicons"
```

Generate all your icons using something like the
[Real Favicon Generator](http://realfavicongenerator.net), and put
the files in `app/assets/favicons`.

Add the helper to your layout somewhere in the `<head>` tag:

``` html
<%= all_the_favicons %>
```

## Configuration

You can configure colors by adding an initializer (ie
`app/config/initializers/favicons.rb`).

``` ruby
AllTheFavicons.name = "MyApp" # For the Android Chrome manifest
AllTheFavicons.ms_tile_color = "#2d89ef"
AllTheFavicons.pinned_tab_color = "#000000"
AllTheFavicons.theme_color = "#ffffff"
```

## License

all-the-favicons is licensed under the
[MIT License](http://www.opensource.org/licenses/MIT).
