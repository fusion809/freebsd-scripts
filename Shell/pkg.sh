function update {
	sudo pkg update && sudo pkg upgrade -y
}

function pkin {
	sudo pkg install -y $@
}

alias spiy=pkin

function pkrm {
	sudo pkg remove -y $@
}

alias spry=pkrm
