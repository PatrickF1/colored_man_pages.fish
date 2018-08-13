<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### Colored Man Pages
> A plugin for [Oh My Fish].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.7.1-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

This plugin installs a fish function wrapper around `man` that colorizes non-standard text (underlined, bold, and standout) to make reading man pages easier and more enjoyable. This idea was first inspired by [Arch Linux wiki](https://wiki.archlinux.org/index.php/Color_output_in_console#Using_less). 

## Install

With [Oh My Fish]
```fish
$ omf install https://github.com/patrickf3139/Colored-Man-Pages
```
With [fisherman]
```fish
$ fisher patrickf3139/Colored-Man-Pages
```

## Usage
Just execute `man` as you usually would to get the colors. For example
```fish
$ man less
```
To execute vanilla `man` without the added colors, simply specify the path of the `man` binary. `which man` should output the path to the binary. For example, on OSX it is `/usr/bin/man`, so Mac users would execute
```fish
$ /usr/bin/man less
```

# License

[MIT][mit] © [Patrick Fong](github.com/patrickf139)


[mit]: https://opensource.org/licenses/MIT
[omf-link]: https://www.github.com/oh-my-fish/oh-my-fish
[fisherman]: https://github.com/fisherman/fisherman
[Oh My Fish]: https://github.com/oh-my-fish/oh-my-fish
[license-badge]: https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
