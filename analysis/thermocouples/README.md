# README

The most trusted source for voltage-to-temperature conversion of any thermocouple E is [NIST](https://srdata.nist.gov/its90/download/download.html)

Unfortunately, the data provided is in a awful barely human-readable machine-unreadable format. This document provides some indications on the steps we took to clean that up and get a nice looking table

These are only notes. They're not pretty, they're not verified, proof-read, guaranteed in any way.

# Files

* `*.py` python3 scripts
* `type_X_orig.tab` the original files downloaded from NIST
* `type_X.tab ` cleaned files
* `type_X_out.csv` the parsed csv files

# Cleanup

1. first of all we need to separate the numbers from the un-needed text. We can do that by parsing the files with a REGEX like the following `^([\d\-\.\s]+)$`. This will match all lines made only of digits, "-", "." or spaces from start to finish.
2. We need to remove double spaces, we can do that with any "find and replace" feature available in any ascii texteditor (gedit, notepad++, atom, rstudio etc etc)
3. Replace " " with ",". This can be done with the unix command [tr](https://en.wikipedia.org/wiki/Tr_(Unix)) or search and Replace
4. add commas where missing. Each line needs 12 commas

# Conversion

The provided `expand.py` script will convert the data to csv
