function vd {
    pushd $1
    vim
    popd
}

function vsh {
    vd "$HOME/Shell/$1"
}
