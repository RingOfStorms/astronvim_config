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
git clone https://github.com/RingOfStorms/astronvim_config ~/.config/nvim/lua/user
```

#### Start Neovim  install changes

```shell
nvim  --headless -c 'quitall'
```
