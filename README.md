## Usage
1. Install vim-plug to manage plugins

	* vim
    ```shell
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	```
	* nvim
    ```shell
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ```
2. Checkout repo to specific directory

    ```shell
	git clone https://github.com/vimers/vimrc $HOME/.config/nvim
	```
    add soft link when using vim(NOT NEED USING NVIM)
    ```shell
    ln -s ~/.config/nvim/init.vim ~/.vimrc
    ln -s ~/.config/nvim/coc-settings.json ~/.vim/
    ```
3. Install all plugins. Open vim and execute`:PlugInstall`
4. Install language server.
    - clangd(c/c++)

	following by [the official install instructions](https://github.com/clangd/clangd/releases) or using the following command

	```vimscript
	:CocCommand clangd.install
	```
	- jdt(java)

	Download jdt binary from [official website](https://download.eclipse.org/jdtls/snapshots/?d).
	And extract files to `~/.config/coc/extensions/coc-java-data/server`

	- pyright(python)

	No additional operations. Language server is contained in coc-pyright that will be installed automatically.
5. Change font to nerd fonts
