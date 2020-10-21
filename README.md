<a href="https://fermiumlabs.com/">
    <img src="https://raw.githubusercontent.com/Fermium/presskit/master/Logo/Rasters/250h/Fermium-horizontal.png" alt="Fermium LABS logo" width="200" align="right" />
</a>

# Hall effect apparatus
[![Build Status](https://cloud.drone.io/api/badges/Fermium/latex-docker/status.svg)](https://cloud.drone.io/Fermium/latex-docker)

## Downloads

Please check the [releases page](https://github.com/Fermium/hall-effect-handbook/releases)

## Corrections and Issues

If you find a problem please [open an issue](https://github.com/fermiumlabs/Hall-effect-apparatus/issues/new) (you need a Github account) on this repository.

> what is a repository? how do i open an issue?? i don't want this crap, just let me correct an equation!!!

Email us at <support@fermium.ltd.uk>

If you want to contribute, go to the page and click the "edit" link in the top icons.

## How was it written?

This document is written in R [Bookdown](https://bookdown.org/home/).

## How to compile from markdown

To compile this document you need installed:

- [pandoc](http://pandoc.org)
- R
- make [(osx)](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/)
- imagemagick (optional, to compress the pdf)

You can use the standard make utils on any unix system

```bash
make install_r_packages #install dependencies
make all #clean and build everything
make all_compress #make all and compress the .zip
make clean #clean
make pdf
make html
make epub
```

If you're on a OS X, you can also run:

```bash
make open_pdf
make open_html
```

Which will open the various files with your default app. If you do not want to install all that software, check out [latex-docker](https://github.com/fermiumlabs/latex-docker).

## LICENSE

This work is distributed under the terms of the [GNU Free Documentation License](http://www.gnu.org/licenses/fdl-1.3.html)

Original paper by Giacomo Torzo of [Labtrek](http://labtrek.it)

---

<a href="https://twitter.com/intent/user?screen_name=fermium">
    <img src="https://img.shields.io/twitter/follow/fermium.svg?style=social&label=Follow" alt="Follow Fermium on Twitter" align="right" />
</a>
