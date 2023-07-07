# No Longer Udpated
I've since made a config from scratch not using AstroNvim: https://github.com/RingOfStorms/nvim

Astronvim simply was a bit too much for what I needed in my personal setup. I still recommend it as the very first config to try since it works quite well and has defaults similar to most graphical editors if that is where you are coming from. Once you use vim more it gets obvious the pros of making your own config and having only the things you need installed.

# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

#### Clone this repository into the user config section

```shell
git clone git@github.com:RingOfStorms/astronvim_config.git ~/.config/nvim/lua/user
```

#### Start Neovim  install changes

```shell
nvim  --headless -c 'quitall'
```
