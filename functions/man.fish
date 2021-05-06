function man --wraps man -d "Run man with added colors"
    set --local --export MANPATH $MANPATH

    if test -z "$MANPATH" && set path (command man -p 2>/dev/null)
        set MANPATH (string replace --regex '[^/]+$' '' $path)
    end

    set fish_manpath (dirname $__fish_data_dir)/fish/man
    if test -d $fish_manpath
        set --prepend MANPATH $fish_manpath
    end

    cless (command --search man) $argv
end
