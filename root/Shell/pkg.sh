function pu {
	pkg upgrade "$1"
}

function puy {
	pu "-y"
}

function pi {
	pkg install "$@"
}

function piy {
	pi -y "$@"
}
