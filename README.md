Installation instructions:
==========================

```bash
[ ! -d ~/.config ] && mkdir ~/.config
cd ~/.config
git clone git@github.com:RauliL/zshrc.git zsh
cd ./zsh
git submodule update --init
ln -s ~/.config/zsh/zshrc ~/.zshrc
```
