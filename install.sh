sudo apt-get install git

# setup homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo apt-get install build-essential
echo 'eval $(/home/vagrant/.linuxbrew/bin/brew shellenv)' >> /home/vagrant/.bashrc
eval $(/home/vagrant/.linuxbrew/bin/brew shellenv)
brew install gcc

# install and set zsh as default shell
brew install zsh
echo $(which zsh) | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $(whoami)

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# need to force since the file already exists
ln -sf $(pwd)/dot.zshrc ~/.zshrc

brew install tig task vim

ln -s $(pwd)/dot.vim ~/.vim
ln -s $(pwd)/dot.vimrc ~/.vimrc


