[![wercker status](https://app.wercker.com/status/c3f211eac0371c5d15070b87bf848438/s/master "wercker status")](https://app.wercker.com/project/byKey/c3f211eac0371c5d15070b87bf848438) [![Analytics](https://ga-beacon.appspot.com/UA-69533556-3/hall-effect-apparatus/readme/?flat)](https://github.com/igrigorik/ga-beacon)


# Hall effect apparatus

## Downloads


| Version | Link |
| --- | --- |
| PDF, compressed (suggested) | [**Download** :floppy_disk:](https://s3-eu-west-1.amazonaws.com/handbooks-autobuild/hall-effect-handbook/Hall_Handbook.pdf) |
| HTML, .zip archive | [Download](https://s3-eu-west-1.amazonaws.com/handbooks-autobuild/hall-effect-handbook/Hall_Handbook.zip) |
| HTML, online | [Download](https://s3-eu-west-1.amazonaws.com/handbooks-autobuild/hall-effect-handbook/Hall_Handbook.html) |
| Microsoft Word (.docx) | [Download](https://s3-eu-west-1.amazonaws.com/handbooks-autobuild/hall-effect-handbook/Hall_Handbook.docx) |
| PDF, uncompressed |[Download](https://s3-eu-west-1.amazonaws.com/handbooks-autobuild/hall-effect-handbook/Hall_Handbook_hires.pdf) |

The links are automatically updated.


## Corrections and Issues

If you find a problem with the documentation or the code please [open an issue](https://github.com/fermiumlabs/Hall-effect-apparatus/issues/new) (you need a Github account) on this repository.

> what is a repository? how do i open an issue?? i don't want this crap, just let me correct an equation!!!

Email us at [support@fermiumlabs.com](mailto:support@fermiumlabs.com)

If you want to contribute, fork the repository and then make a [pull request](https://help.github.com/articles/using-pull-requests/).

## How was it written?

This document is written in Pandoc Markdown, with the use of a few extensions.

## How to compile from markdown

To compile this document you need installed:
* [pandoc](http://pandoc.org)
* [pandoc-eqnos](https://github.com/tomduck/pandoc-eqnos)
* [pandoc-tablenos](https://github.com/tomduck/pandoc-tablenos)
* [pandoc-fignos](https://github.com/tomduck/pandoc-fignos)
* make [(osx)](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/)

You can use the standard make utils on any unix system
```bash
make all #clean and build everything
make clean #clean
make pdf
make html
make docx
```

If you're on a OS X, you can also run:

```bash
make open_pdf
make open_html
make open_docx
```

Which will open the various files with your default app.
If you do not want to install all that software, check out [latex-docker](https://github.com/fermiumlabs/latex-docker).


## LICENSE
This work is distributed under the terms of the [GNU Free Documentation License](http://www.gnu.org/licenses/fdl-1.3.html)

Original paper by Giacomo Torzo of [Labtrek](http://labtrek.it)
