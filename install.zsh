setopt EXTENDED_GLOB
for dotfile in "${ZDOTDIR:-$HOME}"/.dotfiles/^(install.zsh|README.md)(.N); do
  ln -s "$dotfile" "${ZDOTDIR:-$HOME}/.${dotfile:t}"
done
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
git clone git@github.com:gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginINstall +qall
