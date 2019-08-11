## Usage
1. Install Vundle to manage vim plugins
    ```shell
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	```
2. Checkout repo to specific directory
    ```shell
	git clone https://github.com/vimers/vimrc $HOME/.vim/config
	```
3. Add following in $HOME/.vimrc
    ```vim
	source ~/.vim/config/plugins.vim
	source ~/.vim/config/appearance.vim
	source ~/.vim/config/statusline.vim
	source ~/.vim/config/fileexplore.vim
	source ~/.vim/config/common.vim
	source ~/.vim/config/fuzzyfinder.vim
	source ~/.vim/config/dict.vim
	source ~/.vim/config/lsc.vim
	source ~/.vim/config/comment.vim
    ```
4. Install all plugins. Open vim and execute`:PlugInstall`
5. install cquery
6. Change font to nerd fonts
7. link coc-config/snippes-config file to `$HOME/.vim`
    ```shell
    ln -s $HOME/.vim/config/coc-settings.json $HOME/.vim/
    ln -s $HOME/.vim/config/UltiSnips $HOME/.vim/
    ```
