### Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files=".bashrc .screenrc .gitconfig .zshrc .vimrc"

###

# creade dofiles_old
echo "Creating $olddir for backup of existing dotfiles"
mkdir -p $olddir
echo "...done"

# change to dotfiles dir
echo "Changing to $dir directory"
cd $dir
echo "...done"

# move existing dotfiles to backup dir
for file in $files; do
	echo "Moving existing dotfiles to $olddir"
	mv ~/$file ~/dotfiles_old/
	echo "Creating symlinks"
	ln -s $dir/$file ~/$file
done
