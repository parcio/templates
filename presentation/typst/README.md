# ParCIO typst Presentation Template

This directory contains a typst presentation template based on
[Polylux](https://polylux.dev/book/).

## Usage

Please refer to the [typst manual](https://github.com/typst/typst?tab=readme-ov-file#installation) on how to install typst itself.

Once installed compile the presentation script with `typst`.
```sh
$ typst compile presentation.typ
# You can also compile your presentation on file updates.
$ typst watch presentation.typ
```

## Template Functions

This template provides some basic slide functions to create 16:9 presentation slides.

- `title-slide`: Stylized title slide
  - (required) title
  - subtitle
  - author
  - authormails
  - date
  - extra
  - logos
- `slide`: A normal slide
- `centered-slided`: Slide with centered content.
- `focus-slide`: Color-highlighted centered slide.
- `todo`: Overlays a translucent TODO banner over the current slide.
  - txt: Replaces the default "TODO" with the given content.

## References

The `presentation.typ` file contains basic examples of the template to get you
started. If you want to look at further resources checkout the [typst
reference](https://typst.app/docs/reference/) and the [Polylux
book](https://polylux.dev/book/).

