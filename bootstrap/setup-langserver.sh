# Setup Azure Bicep Language Server
(cd $(mktemp -d) \
    && curl -fLO https://github.com/Azure/bicep/releases/latest/download/bicep-langserver.zip \
    && rm -rf /usr/local/bin/bicep-langserver \
    && unzip -d /usr/local/bin/bicep-langserver bicep-langserver.zip)