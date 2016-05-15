my.vim
===========================
Configuration of ypf's vim

****
###　　　　　　　　　　　　Author:风海流
###　　　　　　　　　 E-mail:827324013@qq.com

===========================



##说明

    vim是一款很不错的编辑器，可以很灵活的配置各种插件，每个人都可以依此打造属于自己的编辑器！
    vundle是一款插件管理工具，可以很轻松帮助vim扩展或者删除插件。


###Vundle

    项目托管在github上 https://github.com/gmarik/vundle
    其特色在于使用git来管理插件,更新方便，支持搜索，一键更新，从此只需要一个.vimrc走天下.

* **安装与配置**

    使用git命令：git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle


###Vimrc

    .vimrc是vim的配置文件，包括所有的插件配置和vim基础属性配置。

* **.vimrc配置简介**
```vim
" vundle {
set rtp+=~/.vim/bundle/vundle/
" 如果在windows下使用的话，设置为
" set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()
" }
"
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
  
" My Bundles here:
"
" original repos on github
" github上的用户写的插件，使用这种用户名+repo名称的方式
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" vimscripts的repo使用下面的格式，直接是插件名称
Bundle 'taglist.vim'
Bundle 'SuperTab'
Bundle 'vimwiki'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'The-NERD-tree'
Bundle 'matrix.vim--Yang'
Bundle 'FencView.vim'
Bundle 'Conque-Shell'
Bundle 'Vimpress'
Bundle 'Markdown'
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'c.vim'
Bundle 'snipMate'
  
" non github reposo
" 非github的插件，可以直接使用其git地址
" Bundle 'git://git.wincent.com/command-t.git'
" ...
  
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
" 安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载，这个插件，同时如果
" 需要配置这个插件，也是在vimrc中设置即可
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
```

——————
    Let's enjoy vim! :smiley:
——————
     
