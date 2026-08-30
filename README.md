[![Version](https://img.shields.io/gem/v/all-the-favicons.svg?style=flat)](https://rubygems.org/gems/all-the-favicons)
[![Build](https://github.com/anyone-oslo/all-the-favicons/actions/workflows/build.yml/badge.svg)](https://github.com/anyone-oslo/all-the-favicons/actions/workflows/build.yml)

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
AllTheFavicons.short_name = "MyApp"
AllTheFavicons.ms_tile_color = "#2d89ef"
AllTheFavicons.pinned_tab_color = "#000000"
AllTheFavicons.background_color = "#ffffff"
AllTheFavicons.theme_color = "#ffffff"
```

## Contributing

Bug reports and pull requests are welcome on
[GitHub](https://github.com/anyone-oslo/all-the-favicons). See
[CONTRIBUTING.md](CONTRIBUTING.md) for how to get set up and how
commits are formatted, and note that this project ships with a
[code of conduct](CODE_OF_CONDUCT.md).

## License

Released under the [MIT License](MIT-LICENSE).
