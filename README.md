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
source ~/.vim/config/tagbar.vim
source ~/.vim/config/statusline.vim
source ~/.vim/config/ycm.vim
source ~/.vim/config/fileexplore.vim
source ~/.vim/config/common.vim
source ~/.vim/config/ctrlp.vim
source ~/.vim/config/dict.vim
source ~/.vim/config/lsc.vim
    ```
4. Install all plugins. Open vim and execute`:PluginInstall`
5. install YouCompleteMe
    ```shell
    cd .vim/bundle/YouCompleteMe/
    ./install.sh --all
    ```
	Compile clang+llvm will need large memory exceed 1.5G. So if your computer don't have enough memory, use swap memory.
	```shell
	sudo dd if=/dev/zero of=/swapfile bs=64M count=16
	sudo mkswap /swapfile
	sudo swapon /swapfile
	```
	free swapfile when compiling complete
	```shell
	sudo swapoff /swapfile
	sudo rm /swapfile
	```
