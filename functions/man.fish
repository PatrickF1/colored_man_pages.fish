function man --wraps man -d "Run man with added colors"
    set --local --export MANPATH $MANPATH

    # special case for NetBSD and FreeBSD: set MANPATH if not already set
    # see https://github.com/fish-shell/fish-shell/blob/555af37616893160ad1afb208a957d6a01a7a315/share/functions/man.fish#L15
    if test -z "$MANPATH"
        if set path (command man -p 2>/dev/null)
            set MANPATH (string replace --regex '[^/]+$' '' $path)
        else
            set MANPATH ""
        end
    end

    # prepend the directory of fish manpages to MANPATH
    set fish_manpath $__fish_data_dir/man
    if test -d $fish_manpath
        set --prepend MANPATH $fish_manpath
    end

    cless (command --search man) $argv
end
