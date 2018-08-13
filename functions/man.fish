#!/usr/bin/env fish

# Idea from https://wiki.archlinux.org/index.php/Color_output_in_console#less

# The reason we set these environment variables locally before each invocation of man rather
# than keeping them in config.fish is because they will mess up the colors for other commands. See
# https://unix.stackexchange.com/questions/87261/getting-unexpected-colorized-output-on-several-commands
function man -d "Run man with added colors"
    set -l bold_ansi_code "\u001b[1m"
    set -l underline_ansi_code "\u001b[4m"
    set -l reversed_ansi_code "\u001b[7m"
    set -l reset_ansi_code "\u001b[0m"
    set -l teal_ansi_code "\u001b[38;5;31m"
    set -l green_ansi_code "\u001b[38;5;70m"
    set -l gold_ansi_code "\u001b[38;5;220m"

    set -x LESS_TERMCAP_md (printf $bold_ansi_code$teal_ansi_code) # start bold
    set -x LESS_TERMCAP_me (printf $reset_ansi_code) # end bold
    set -x LESS_TERMCAP_us (printf $underline_ansi_code$green_ansi_code) # start underline
    set -x LESS_TERMCAP_ue (printf $reset_ansi_code) # end underline
    set -x LESS_TERMCAP_so (printf $reversed_ansi_code$gold_ansi_code) # start standout
    set -x LESS_TERMCAP_se (printf $reset_ansi_code) # end standout
    command man $argv
end
