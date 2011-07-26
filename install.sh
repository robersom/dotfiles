#dotfile setup
#installation file created by roberson
#diretorio do dotfiles - dotfiles dir
diretorio="dotfiles"

echo "=========================================="
echo "instalando dotfiles - installing dotfiles"

cd
if [ -d "$diretorio" ]; then

  if [ ! -L .bash_aliases ]; then
    ln -s dotfiles/bash_profile .bash_profile
  fi

  if [ ! -L .gemrc ]; then
    ln -s dotfiles/gemrc .gemrc
  fi

  if [ ! -L .irbrc ]; then
    ln -s dotfiles/irbrc .irbrc
  fi

  if [ ! -L .gitignore ]; then
    ln -s dotfiles/gitignore .gitignore
  fi

  if [ ! -d ~/bin ]; then
    mkdir ~/bin
  fi

  if [ ! -L bin/ ]; then
    ln -s dotfiles/git-publish-branch bin/
  fi

  echo "criados links simbolicos - created symbolic links"
  echo ""

  echo "criando copia do .bashrc  para bashrcOld - copy from .bashrc to .bashrcOld"
  if [ ! -f .bashrcOld ]; then
    mv ~/.bashrc ~/.bashrcOld
  fi
    
  echo "gerando outro .bashrc - generate .bashrc"
  cp ~/dotfiles/bash_profile ~/.bashrc

  echo ""
else

  echo "diretorio $diretorio nao existe"
  echo "dir $diretorio dont exists"

fi 

source ~/.bashrc

echo "fim da instalacao - End of installation "
echo "================================================"
echo "Atualize o bash com o comando source ~/.bashrc"
echo "run the command: source ~/.bashrc"
echo "================================================"
