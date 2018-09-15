function update {
	sudo pkg update && sudo pkg upgrade -y
}

function pkin {
	sudo pkg install -y $@
}

alias spiy=pkin
alias spki=pkin
alias spkiy=pkin
alias spiy=pkin

function spi {
	sudo pkg install "$@"
}

function pkrm {
	sudo pkg remove -y $@
}

alias spry=pkrm

function pks {
	sudo pkg search "$@"
}

alias spks=pks
alias sps=pks
