function cdsh {
    cd $HOME/Shell
}

function cdi {
    cd $HOME/.kde4/share/icons
}

function cdg {
    cd "$HOME/GitHub/$1"
}

function cdgm {
    cdg "mine/$1"
}

function cded {
    cdgm "editors/$1"
}

function cdvm {
    cded "vim/$1"
}

function cdsc {
    cdgm "scripts/$1"
}

function cdfs {
    cdsc "freebsd-scripts/$1"
}

function cdzs {
    cdsc "zsh-theme/$1"
}

function cdp {
    cd $HOME/Programs
}
