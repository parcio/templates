# ParCIO LaTeX Presentation Template

This directory contains a LaTeX presentation template.

## Usage

We recommend the usage of [`latexmk`](https://www.cantab.net/users/johncollins/latexmk/index.html) to compile the slides.

If you use Ubuntu you can use the following command to install the necessary dependencies:
``` sh
$ sudo apt update
$ sudo apt install texlive texlive-fonts-extra texlive-lang-german texlive-latex-extra texlive-plain-generic latexmk
```

Then build the slides with `latexmk`:
```sh
$ latexmk -pdf presentation
```
