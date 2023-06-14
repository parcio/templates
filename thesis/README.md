# ParCIO Thesis Template

This directory contains the ParCIO thesis template. The template can be build
either manually using `pdflatex` or `latexmk` or by the provided `Makefile`.

## Building via `Makefile`

Before building ensure that the following required software is installed on your system:
- pdflatex
- latexmk
- make

And optionally, if you want to save figures in your thesis in the `svg` format
and automatically convert them to `pdf` for latex to use:
- inkscape

To build the template then simply run in the thesis directory in your terminal:

```sh
$ make
```
