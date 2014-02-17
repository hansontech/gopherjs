#! /bin/bash
set -e

curl https://raw.github.com/creationix/nvm/master/install-gitless.sh | bash
. $HOME/.nvm/nvm.sh
nvm install 0.11
nvm use 0.11

cd node-syscall
npm install --global node-gyp
node-gyp rebuild
mkdir -p ~/.node_libraries/
cp build/Release/syscall.node ~/.node_libraries/syscall.node
cd ..
