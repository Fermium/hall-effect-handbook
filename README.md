# Free Open Scientific Equipment

Fermium LTD announces the free release of all scientific equipment designs under the terms of the MIT license. You are free to use them as you wish.

## Why?

Our small business is no longer competitive in this sector, and thus we've ceased production of this scientific equipment.

## What's Included

- Microwave Optics Kit:
  - [Microwave RX and TX](https://github.com/Fermium/ltk-mw-electronic): A pair of ultra-low-cost 10GHz microwave transmitters and receivers
  - [Microwave Kit Display](https://github.com/Fermium/frm-mw-display)
  - [Diode Detector](https://github.com/Fermium/frm-mw-diode-detector): A 10GHz diode detector for studying evanescent waves and wave propagation in waveguides
  - [Mechanics](https://github.com/Fermium/ltk-mw-mechanics) including:
    - [Transmitter and Receiver](https://github.com/Fermium/ltk-mw-mechanics/tree/master/transmitter%20and%20receiver) with rear protractor
    - [Structure](https://github.com/Fermium/ltk-mw-mechanics/tree/master/structure) with feet, rulers, center protractor, and center mount
    - [PCB Optics Components](https://github.com/Fermium/ltk-mw-mechanics/tree/master/pcbs): Mirrors, polarizers, photon-sieves, Fresnel zone plates
    - [Waveguides](https://github.com/Fermium/ltk-mw-mechanics/tree/master/accessories/waveguides)

- Hall Effect Apparatus:
  - [Electronics](https://github.com/Fermium/ltk-hall-electronics) for the 2015, 2017, and 2019 models
  - [2015 Firmware](https://github.com/Fermium/Hall-firmware)
  - [2017 Firmware](https://github.com/Fermium/hall-firmware-v2#hall-effect-apparatus-firmware---2017)


<a href="https://fermiumlabs.com/">
    <img src="https://raw.githubusercontent.com/Fermium/presskit/master/Logo/Rasters/250h/Fermium-horizontal.png" alt="Fermium LABS logo" width="200" align="right" />
</a>

# Hall effect apparatus
[![Build Status](https://cloud.drone.io/api/badges/Fermium/hall-effect-handbook/status.svg)](https://cloud.drone.io/Fermium/hall-effect-handbook)

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
