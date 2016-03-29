function update {
	sudo pkg update
}

function pkin {
	sudo pkg install -y $@
}

function pkrm {
	sudo pkg remove -y $@
}
