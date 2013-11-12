#!/bin/sh

# Lesson 1
mkdir -p GitInLittleBitsWork$1/scratch; pushd GitInLittleBitsWork$1/scratch
echo 'some text' > foo.txt
echo 'more text' > bar.txt
git init
git add bar.txt 
git add foo.txt 
git commit -m "First commit of foobar"
git show --format="%ci" HEAD

# Lesson 2
# git config --global user.name "John Doe"
# git config --global user.email johndoe@example.com
# git config --global core.editor vim
# git config --global color.ui true
# git config --global core.excludesfile ~/.gitignore_global
# git config --global alias.show-graph 'log --graph --abbrev-commit --pretty=oneline'
# git config --global color.diff true
# git config --global color.status true
# git config --global color.branch true
# git config --global color.interactive true

# Lesson 3
# Exploring hashes...
echo 'even more text' >> bar.txt
git commit -a -m "Added some more content to bar.txt."

# Lesson 4
# Retrieving a changeset
echo 'a stable new feature' >> foo.txt 
git commit -a -m 'Added a stable new feature'
echo 'another stable new feature' >> foo.txt 
git commit -a -m 'Added another stable new feature'
echo 'an experimental new feature' >> foo.txt 
git commit -a -m 'Added an experimental new feature'
git reflog
git checkout HEAD^
git reflog
git show-graph
echo 'yet another stable new feature' >> foo.txt 
git commit -a -m "Added yet another stable new feature"

# Lesson 5
# Fixing our detached head
git branch feature_alpha
git checkout feature_alpha
git show-graph
git branch -f master feature_alpha
git checkout master
git show-graph

# Lesson 6
# Start Working with Branches
git branch
git checkout -b baz_init
echo 'this is a cool new feature' > baz.txt
git add baz.txt 
git commit -m "Add a cool new feature."
git checkout master
git merge baz_init

# Lesson 7
# More with Branches: Patches
echo 'this is a new bug' >> bar.txt
git commit -a -m "Add a new feature to bar.txt"
git checkout -b baz_alpha
echo 'this is incomplete feature alpha' > baz.txt
git add baz.txt
git commit -m "Add incomplete feature alpha to baz."
git checkout master
perl -p -i -e 's/bug/feature/g' bar.txt
git commit -a -m "Fix a bug in bar."
git checkout baz_alpha
echo 'this completes feature alpha' >> baz.txt
git add baz.txt
git commit -m "Add feature alpha to baz."
git checkout master
git merge baz_alpha

# git checkout -b lesson008_init
# git add lesson008.adoc 
# git add GitInLittleBits.adoc 
# git commit
# git push origin master
# ## Everything up-to-date
# git remote -v
# git push origin lesson008_init

# Lesson 8
# Introduction to Stashes
echo 'this is another bug' >> bar.txt
git commit -m "Add another feature to bar.txt" bar.txt
echo 'this is incomplete feature beta' >> baz.txt
git stash save "working on feature beta"
git stash show
perl -p -i -e 's/bug/feature/g' bar.txt
git commit -a -m "Fix another bug in bar."
git stash pop
git stash show
echo 'this is completes feature beta' >> baz.txt
git add baz.txt
git commit -m "Add feature alpha to baz."

# Lesson XX
# GitHub 1 
# First, go to github.com. Second, click on my Repositories, and then click on 
# New. Fill out basic description, decline to create a Readme or an ignore 
# file. Then, back on the PC, go to the project directory. I like for them to
# be the same name.
#
# VimConfig$ pwd
# ~/VimConfig
# VimConfig$ echo "Initial version of my Vim configuration." > README.md
# VimConfig$ git init
# VimConfig$ git add README.md
# VimConfig$ git commit -m 'initial commit'
# VimConfig$ git remote add origin https://github.com/gnperdue/VimConfig.git
# VimConfig$ git push -u origin master
# Counting objects: 3, done.
# Writing objects: 100% (3/3), 254 bytes | 0 bytes/s, done.
# Total 3 (delta 0), reused 0 (delta 0)
# To https://github.com/gnperdue/VimConfig.git
#  * [new branch]      master -> master
#  Branch master set up to track remote branch master from origin.
#
# At this point, one can just keep working, or one can re-check the repo. I 
# like to re-checkout the repo just to be sure everything is working, but 
# it doesn't really matter.
#
# Vim$ rm -rf VimConfig
# Vim$ git clone https://github.com/gnperdue/VimConfig.git
# Cloning into 'VimConfig'...
# remote: Counting objects: 3, done.
# remote: Total 3 (delta 0), reused 3 (delta 0)
# Unpacking objects: 100% (3/3), done.
# Checking connectivity... done



# Lesson XX
# Submodules
# git submodule add https://github.com/gnperdue/PersonalScripts.git



