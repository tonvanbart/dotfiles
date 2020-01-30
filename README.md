# dotfiles
Repository for OSX dotfiles, see the following links:<br>
https://www.atlassian.com/git/tutorials/dotfiles
<br>and<br>
https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html

## how it was made
_*NOTE*_: do not forget to add the `dotfiles` alias to `.bashrc`!<br>
See below; `alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'`
```
 ~  dev-bart502  $  mkdir .dotfiles
 ~  dev-bart502  $  git init --bare .dotfiles/
Initialized empty Git repository in /Users/ton/.dotfiles/
 ~  dev-bart502  $  alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
 ~  dev-bart502  $  vim .gitignore
 ~  dev-bart502  $  dotfiles add .gitignore
 ~  dev-bart502  $  dotfiles ci -m 'ignore dotfiles repo'
[master (root-commit) b29fc1d] ignore dotfiles repo
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore
 ~  dev-bart502  $  dotfiles config --local status.showUntrackedFiles no
 ~  dev-bart502  $  dotfiles remote add origin git@github.com:tonvanbart/dotfiles.git
 ~  dev-bart502  $  dotfiles push -u origin master
Counting objects: 3, done.
Writing objects: 100% (3/3), 232 bytes | 232.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To github.com:tonvanbart/dotfiles.git
 * [new branch]      master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.
```
After this, start adding dotfiles with `dotfiles add ...`, `dotfiles commit` and `dotfiles push`
