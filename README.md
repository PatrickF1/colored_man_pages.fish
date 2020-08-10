<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### colored_man_pages.fish
> A plugin for the [fish-shell](https://fishshell.com).

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.0.2-blue.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

This plugin installs a fish function wrapper around `man` that colorizes styled text (specifically underlined, bold, and standout) to make browsing man pages easier and more enjoyable.

The colors are added by setting environment variables that control how `less`, `man`'s default pager, processes styled text. Why use a wrapper to prepare environment variables when we could simply initialize environment variables on shell startup? Because the environment variables used contain escape sequences that will "overflow" into the output of other commands reading environment variables. See this [Stackoverflow question](https://unix.stackexchange.com/questions/87261/getting-unexpected-colorized-output-on-several-commands) for an explanation.

Credits: This idea was first inspired by [Arch Linux wiki](https://wiki.archlinux.org/index.php/Color_output_in_console#Using_less).

<img alt="colored man page for less" src="./images/less-man-page.png">

## Install

With [Oh My Fish]
```fish
$ omf install https://github.com/patrickf3139/colored_man_pages.fish
```
With [fisher]
```fish
$ fisher add patrickf3139/colored_man_pages.fish
```

## Usage
Just invoke `man` as usual, but without changing the pager, to get colored output. For example
```fish
$ man less
```
To execute vanilla `man` without colored output, we can bypass the wrapper using `command`. For example
```fish
$ command man less
```
As for coloring the output of `git help`, unfortunately, there doesn't seem to be an easy way to add a hook to, or wrapper, around `git help`'s call to `less`. This is because `git` always executes in a bash shell ([source](https://git-scm.com/book/tr/v2/Git-Internals-Environment-Variables)) and so completely bypasses fish's autoloaded functions. As an alternative, we can execute `man` directly on `git`'s' man pages like so:
```fish
$ man git-merge
$ man git-status
$ man git-log
```

# License

[MIT][mit] © [Patrick](https://github.com/patrickf3139)

[mit]: https://opensource.org/licenses/MIT
[omf-link]: https://www.github.com/oh-my-fish/oh-my-fish
[fisher]: https://github.com/jorgebucaran/fisher
[Oh My Fish]: https://github.com/oh-my-fish/oh-my-fish
[license-badge]: https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
