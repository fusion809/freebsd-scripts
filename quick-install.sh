# Create GitHub directory
if ! [[ -d $HOME/GitHub ]]; then
  mkdir $HOME/GitHub
fi

# Get openssh, if not pre-installed and Zsh
sudo pkg install -y git openssh-portable zsh

# Clone freebsd-scripts repo
if ! [[ -d $HOME/GitHub/mine/freebsd-scripts ]]; then
  git clone https://github.com/fusion809/freebsd-scripts $HOME/GitHub/mine/freebsd-scripts
  cp -a $HOME/GitHub/mine/freebsd-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/mine/freebsd-scripts/root/{Shell,.bashrc,.zshrc} /root/
  cd $HOME/GitHub/mine/freebsd-scripts
  git remote rm origin
  git remote add origin git@github.com:fusion809/freebsd-scripts.git
  git remote add upstream git@github.com:fusion809/freebsd-scripts.git
else
  cd $HOME/GitHub/mine/freebsd-scripts
  git pull origin master
  cd -
  # Copy across
  cp -a $HOME/GitHub/mine/freebsd-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/mine/freebsd-scripts/root/{Shell,.bashrc,.zshrc} /root/
fi

if ! [[ -d $HOME/.oh-my-zsh ]]; then
  # git clone oh-my-zsh
  git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh
else
  cd $HOME/.oh-my-zsh
  git pull origin master
  cd -
fi

if ! [[ -d $HOME/GitHub/zsh-theme ]] || ! [[ -d $HOME/GitHub/mine/zsh-theme ]]; then
# Get my self-made zsh-themes
  git clone https://github.com/fusion809/zsh-theme $HOME/GitHub/mine/zsh-theme
  cp -a $HOME/GitHub/mine/zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
else
  cd $HOME/GitHub/{,mine/}zsh-theme
  git pull origin master
  cd -
  cp -a $HOME/GitHub/{,mine/}zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
fi

if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting ]]; then
  # Get zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
fi

if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-history-substring-search ]]; then
  git clone https://github.com/zsh-users/zsh-history-substring-search $HOME/.oh-my-zsh/plugins/zsh-history-substring-search
fi

# Change default login shell to Zsh
chsh -s /usr/local/bin/zsh
sudo chsh -s /usr/local/bin/zsh
/usr/local/bin/zsh
