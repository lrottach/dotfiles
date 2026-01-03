# Setup - zoxide
brew install zoxide
brew insatll fzf

# Setup - fish shell
# +++++++++++++++++++++++++++++++++++

# Install 'fisher'
# Link: https://github.com/jorgebucaran/fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Install 'nvm.fish' for node version management
# Link: https://github.com/jorgebucaran/nvm.fish
fisher install jorgebucaran/nvm.fish
