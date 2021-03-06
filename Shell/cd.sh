function cdi3 {
	cd $HOME/.i3
}

function cdsh {
    cd $HOME/Shell
}

function cdi {
    cd $HOME/.kde4/share/icons
}

function cdg {
    cd "$HOME/GitHub/$1"
}

function cdgo {
	cdg "others/$1"
}

function cdgm {
    cdg "mine/$1"
}

function cdcf {
	cdgm "config/$1"
}

function cdci3 {
	cdcf "i3-configs/$1"
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

function cdcs {
	cdsc "common-scripts/$1"
}

function cdcsu {
	cdcs "usr/local/bin/$1"
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

function cdpi {
	cd $HOME/Pictures/$1
}

function cdps {
	cdpi "Screenshots/$1"
}

function cdpsi {
	cdps "i3/$1"
}

function cdl {
	cd "$HOME/.local/$1"
}

function cdlb {
	cdl "bin/$1"
}

function cdls {
	cdl "share/$1"
}

function cdlsi {
	cdls "icons/$1"
}

alias cdli=cdlsi

function cdi {
	cd "$HOME/.icons/$1"
}

function cdlst {
	cdls "themes/$1"
}

alias cdlt=cdlst

function cdt {
	cd "$HOME/.themes/$1"
}

alias cdth=cdt
