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
	for config_file in globpath('~/.vim/config', '*.vim', 1, 1)
		exec 'source '.fnameescape(config_file)
	endfor
    ```
4. Install all plugins. Open vim and execute`:PlugInstall`
5. install ccls
6. Change font to nerd fonts
7. link coc-config/snippes-config file to `$HOME/.vim`
    ```shell
    ln -s $HOME/.vim/config/coc-settings.json $HOME/.vim/
    ln -s $HOME/.vim/config/UltiSnips $HOME/.vim/
    ```
