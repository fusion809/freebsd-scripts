function vd {
    pushd $1
    vim
    popd
}

function vsh {
    vd "$HOME/Shell/$1"
}

function vrc {
	vim $HOME/.vimrc
}

function vzsh {
	vim $HOME/.zshrc
}

function vbash {
	vim $HOME/.bashrc
}
