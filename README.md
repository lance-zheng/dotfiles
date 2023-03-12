# Lance's dotfiles

These profiles are only applicable to MacOS systems.

## Usage

Clone repository to `~/.dotfiles`

```sh
cd ~ && git clone git@github.com:lance-zheng/dotfiles.git .dotfiles
```

Create symbolic links

```sh
cd ~/.dotfiles && ./link.sh
```

## Next steps

Install relevant software

### Homebrew

Setup environment variables

```sh
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
```

Install Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Restore data

```sh
brew bundle --file=backup/Brewfile
```

### Vim

Install [vim-plug](https://github.com/junegunn/vim-plug)

### Tmux

Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

### Alacritty

Alacritty Theme `npm install -g alacritty-themes`

### Fish

Add Fish to the know shells

```sh
sudo sh -c 'echo $(which fish) >> /etc/shells'
```

Set Fish as the default shell

```sh
chsh -s $(which fish)
```

Install [Oh My Fish](https://get.oh-my.fish)

### Other Settings

- `autojump`: Refer to `brew info autojump` for configuration
- `docker-compose`: Refer to `brew info docker-compose` for configuration
