function nzsh {
	nano $HOME/.zshrc
}

function szsh {
	source $HOME/.zshrc
}

function zshf {
  mv $HOME/.zsh_history $HOME/.zsh_history_bad
  strings $HOME/.zsh_history_bad > $HOME/.zsh_history
  fc -R $HOME/.zsh_history
}
