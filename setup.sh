lsb_release -d

DIR=$(cd "$(dirname "$0")"; pwd -P)

ln -sf ${DIR}/.gitconfig $HOME/
ln -sf ${DIR}/.vimrc $HOME/
