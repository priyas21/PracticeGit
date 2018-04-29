---Readme File---

The Repository is just for practicing git and its various commands  .



# Git

Git is a distributed version control system; everybody has a copy of repository ; its not centralised 
[ Git GUI link ] : ( http://git-scm.com )
Open bash profile in atom : atom ~/ .bash_profile
Open all the files:  ls -la ~/
Bash Profile : This file is loaded before Terminal loads your shell environment and contains all the startup configuration and preferences for your command line interface.


## Git Commands
- `git status` :-> to check whats changes since last commit
- `git add <file name> <file name>`: Add files to staging area
- `git add --all` : Add all the modified and new files to staging area
- `git commit - m` : Commit all staged files with a one line message
- `git commit` : to add multiline comment
   - Will open a default text editor which is vim 
   - Add the comment > then press esc> then write :wq to save and quit the commit message
- `git log`: to see the history of commits 
- `git log oneline` : Will show all the commits with their first line message
- `git show` : WIll show the current HEAD
- `git show 3b7666e` : Means shows the specified sha /commit

## Different ways to add
- `git add <list of files>` : add all list of files
- `git add -- all` : add all untracked files 
- `git add *.txt` : add all text files in current directory
- `git add doc/ *.txt` : add all text files in doc directory
- `git add doc/` : add all files in doc directory
- `git add “*.txt”` : add all text files in whole project
### .......................................................................................................................................................

- `git diff`  : show the unstated differences since last commit; show the lines added and deleted/ modified in the files 
- `git diff --staged` : View the staged differences 
- `git diff origin/master` : shows all the changes (unstaged and committed from master)
- `git reset HEAD <filename>` : Unstage the changes
  - HEAD refers to last commit on the current branch or current timeline 
- `git checkout — <filename>` : to discard all the changes in the working directory in the specified filename
- `git commit -a -m <commit message>` : Shortcut to add and commit in one line 
  - Note : The above command will only add tracked file; means the files which are added 

## Git reset Commands  
NOTE : Don’t do after push command
### soft
When using `git reset --soft HEAD~1` you will undo the last commit, but the file changes will stay in your working tree. Also the changes will stay on your index, so following with a git commit will create a commit with the exact same changes as the commit you "removed" before. Moves back to staging; moves to commit one before current HEAD
### mixed
This is the default mode and quite similar to soft. When "removing" a commit with `git reset HEAD~1` you will still keep the changes in your working tree but not on the index; so if you want to "redo" the commit, you will have to add the changes (git add) before committing.
### hard
When using `git reset --hard HEAD~1`  or `git reset --soft HEAD^`, you will lose the changes introduced in the last commit. The changes won't stay in your working tree so doing a git status command will tell you that you don't have any changes in your repository.
- `git reset --hard HEAD^^`  : blow away the last two commits and changes
### .......................................................................................................................................................
- `git commit --amend -m <Commit message>` : Adding to last commit and can also change the last commit message; only the tracked files can be added (NOTE : Don’t do after push command)
- `git remote add origin <url of git hub repo>` : adding the remote ; origin is the name of the remote repo
- `git remote -v` : shows remote repositories that our local git repo knows about 
- `git remote rm <remote name > (git remote rm origin)`: Remove the remote 
- `git push -u origin master` : push the changes to remote repo ; origin is remote repo name and master is local branch name ; - u means next time we use push we don’t have to specify the name of the local branch ; we can do git push 
- `git pull` : Pull down the changes from the remote 
- `git clone <remote repo url> <local folder name/optional>`
  - git clone https://github.com/PriyaSodhi/Ruby_Tutorial.git demo-repo 


## Working on Branch commands 

### If you want to work on some feature > use branches ; a different timeline 

- `git branch < branch name>` : `git branch cat`
- `git checkout -b  <branch name>` : Creates the branch and checks it out in the same command
- `git push <remote name> <branch name>` : Pushes the local branch to remote 
- `git branch` : to see which branch you are currently on (all the local branches)
- `git checkout <branch name >`: to jump to a specified branch
- `git checkout cat` : head will be now on cat branch 
  - echo “persian cat”> cat.txt :-> it will add persian cat to cat text file 
- `ls` : list all the files in current directory 
- `git merge <branch name>` : will merge all the changes from current branch to master 
  - first do `git checkout master`, then merge the branch
- `git branch -d <branch name>`:  Remove the local branch after merging it safely
- `git push -d <remote name> <branch name>` : Deletes the branch remotely 
- `git rm -r <Directory/folder name/file name>` : Removes the directory local and remote 
  - `git commit -m  "Remove duplicated directory"`
  - `git push origin <your-git-branch> (typically 'master', but not always)`
  
## Pull and Fetch Commands

- `git pull` : Fetch or sync local reposirory with remote one
     - its `git fetch` followed by `git merge`
     - Its not gonna update our local repo 
     - It will merge origin/master( remote branch) with master(local)
  



