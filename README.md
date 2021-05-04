# MY-DOTFILES INSTALL GUIDE
## AND SOME OTHER TIPS

### OH-MY-ZSH
belongs usually here:
`.oh-my-zsh/.oh-my-zsh.sh`

### NVIM
lookup github

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

`.config/nvim/init.vim`

### SETUP
we need the following

```
brew
fzf
nvm
iterm2
zsh
```


### YARN
instll yarn - globally using Brew
as it would not work with nvm very well

`brew install yarn --without-node`


# INSTALL ALL NECESSARY:

## FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

or look here:
https://github.com/junegunn/fzf#using-homebrew-or-linuxbrew

## install brew
https://docs.brew.sh/Homebrew-on-Linux

## tmux
fedora comes with tmux 2.9
RHEL probable the best is to remove the stock one which is 1.8 and install one from source

# neovim
install from download here
https://github.com/neovim/neovim/wiki/Installing-Neovim



