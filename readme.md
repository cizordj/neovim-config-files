# My NeoVim setup

This repo contains the config files for my neovim setup, this is the
configuration I use on a daily-basis and this readme will show you how to set
this up.

## Dependencies
On Debian-based systems you can install the recommended packages to enjoy
all of the features of this repo.

```sh
apt install git exuberant-ctags ncurses-term curl silversearcher-ag python3-pynvim jq pgformatter
```

The above dependencies are necessary for the basic funcionality, if you are a PHP developer
(like me) you may want to install more packages that are specific to this language.

```sh
apt install php8.1-cli php8.1-xml php8.1-curl php8.1-mbstring php8.1-intl composer phpmd
```

To enjoy the full experience when developing in PHP you can install the php-cs-fixer and
the phpactor plugin as a system-wide application

Now if you are a React developer you can install some dependencies to help you out.

```sh
apt install yarnpkg
```

```sh
yarnpkg add -G typescript prettier
```

With these programs you'll have basic stuff like autocompletion, imports and etc.

# Setting up VimBootstrap
This repo is an extension of a configuration file that you can generate at https://vimbootstrap.com/.
Go there and generate a file for NeoVim selecting PHP, HTML and Javascript as your languages
of choice.

Clone this repository to your neovim config directory.

```sh
mkdir ~/.config/nvim/
git clone git@github.com:/cizordj/neovim-config-files ~/.config/nvim
```

Then open Neovim and let it do its job.
