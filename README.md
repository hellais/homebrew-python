# Overview #

[Homebrew](http://brew.sh)-formulae to install **Python** libraries, which are not yet well supported by `pip install` due to compiler and dependency issues.

## Why not pip? ##

*   **Numpy**
    -   using *suite-sparse* for fast sparse matrices (amd,umfpack)
    -   optionally link against the *openBLAS* (--with-openblas)
*   **SciPy**
    -   optionally link against the *openBLAS* (--with-openblas)
*   **Matplotlib**
    -   Support all optional deps, installable by brew
        (e.g. PyGTK, cairo, ghostscript, tk, freetype and libpng)
*   **PIL** (`brew install pillow`)
    -   The *Python Image Library* in the newer distribution named "pillow"
    -   Support for zlib/PNG
    -   Based on the fast(er) *graphicsmagick* (imagemagick compatible)
    -   *Freetype2* support
    -   *Little-CMS* (for color management)
*   **PyGame** (Game development and provides bindings to SDL)
*   **ReText** (Markdown Editor)
    -   Supports enchant. (You first need to `brew install enchant`)
    -   Some deps have to be installed via pip (it will tell you so)
*   _Open an issue if your favorite is missing_


## Install ##

*   `brew tap Homebrew/python`
*   `brew install scipy`
*   `brew test scipy --verbose`


## Troubleshooting ##

Check main Homebrew [Troubleshooting](https://github.com/Homebrew/homebrew/wiki/Troubleshooting) page. Open an issue here.


## Python ##

We support Python 2.x and 3.x.

_Note: Soon, we will deprecate the `--with-python3` switch and add formulae wiht `-py3` suffixes to support Python 3.x_


## How to add a new formulae here ##

*   Fork this repository on github.
*   Clone to your Mac.
*   Read [Homebrew and Python][1] and look at the other formulae here.
*   In your locally cloned `homebrew-python` repo, create a new branch:
    `git checkout --branch my_new_formula`
*   Write/edit your formula (ruby file). Check the [Homebrew wiki] for details.
*   Test it locally! `brew install ./my-new-formula.rb`. Does it install?
    Note, how `./<formula>.rb` will target the local file.
*   `git push --set-upstream origin my_new_formula`
    to get it into your github as a new branch.
*   If you have to change something, add a commit and `git push`.
*   On github, select your new branch and then click the
    "Pull Request" button.


[1]: https://github.com/Homebrew/homebrew/wiki/Homebrew-and-Python
[Homebrew wiki]: https://github.com/Homebrew/homebrew/wiki
