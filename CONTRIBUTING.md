# Contributing

Bug reports and pull requests are welcome on
[GitHub](https://github.com/anyone-oslo/all-the-favicons). Everyone participating is
expected to follow the [code of conduct](CODE_OF_CONDUCT.md).

## Getting started

Install the dependencies:

```sh
bundle install
```

Check style before pushing:

```sh
bundle exec rubocop
```

## Pull requests

- Write commit messages using
  [Conventional Commits](https://www.conventionalcommits.org). The
  changelog and releases are generated from them, so the `feat:` and
  `fix:` prefixes decide what ends up in the next release.
- Leave the version and `CHANGELOG.md` alone. Both are updated
  automatically when a release is cut.
