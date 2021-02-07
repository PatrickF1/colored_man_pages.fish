# colors documentation can be found at
# http://www.lihaoyi.com/post/BuildyourownCommandLinewithANSIescapecodes.html#256-colors
function cless -d "Configure less to colorize styled text using environment variables before executing a command that will use less"
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

    $argv
end