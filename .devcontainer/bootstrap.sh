## Update and install some cool tools
apt-get update
apt-get install -y \
  curl \
  git \
  gnupg2 \
  jq \
  sudo \
  zsh \
  wget

## Instsall nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

## Install Docker CE
curl -fsSL https://get.docker.com | bash

## Update to the latest PowerShell
curl -sSL https://raw.githubusercontent.com/PowerShell/PowerShell/master/tools/install-powershell.sh | bash