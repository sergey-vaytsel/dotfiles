$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install jq byobu htop tmux zsh-completions
brew install git gh git-lfs
brew install postgresql docker sqlite spatialite-tools node

# cpp env
brew install cmake ccache conan gcc gdb ninja

# rust env
# https://www.rust-lang.org/tools/install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# python & jupyter env
brew install python3
pip3 install numpy scipy pandas matplotlib plotly
pip3 install autopep8 ipykernel ipython ipywidgets jupyter jupyterlab

# https://github.com/python-poetry/poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry

# links to configs
DOTFILES_DIR=$(cd $(dirname $0); pwd -P)
ln -sfv $DOTFILES_DIR/gitconfig $HOME/.gitconfig
ln -sfv $DOTFILES_DIR/zshrc $HOME/.zshrc

# https://code.visualstudio.com/docs/setup/mac
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
