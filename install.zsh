setopt EXTENDED_GLOB
for dotfile in "${ZDOTDIR:-$HOME}"/.dotfiles/^(install.zsh|README.md)(.N); do
  ln -s "$dotfile" "${ZDOTDIR:-$HOME}/.${dotfile:t}"
done