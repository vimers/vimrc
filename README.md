## Usage
1. Install Vundle to manage vim plugins
    ` git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
2. Checkout repo to specific directory
    ` git clone https://github.com/vimers/vimrc $HOME/.vim/config`
3. add following in $HOME/.vimrc
    ```vim
        source ~/.vim/config/plugins.vim
        source ~/.vim/config/tagbar.vim
        source ~/.vim/config/powerline.vim
        source ~/.vim/config/ycm.vim
        source ~/.vim/config/fileexplore.vim
        source ~/.vim/config/common.vim
        source ~/.vim/config/ctrlp.vim
    ```
