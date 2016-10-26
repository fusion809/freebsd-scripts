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

function cdfs {
	cdgm "freebsd-scripts/$1"
}
