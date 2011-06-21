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

  echo 'if [ -f ~/.bash_profiles ]; then . ~/.bash_profiles fi' >> ~/.bashrc

  echo "Atualizando bash - renew bash"
  source ~/.bashrc

else

  echo "diretorio $diretorio nao existe"
  echo "dir $diretorio dont exists"

fi 

echo "fim da instalacao - End of installation "
echo "=========================================="
