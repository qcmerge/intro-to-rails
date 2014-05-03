### Git and Github exercise
Ben will set up a repository and add everyone as collaborators

Clone the repo:  

    $ git clone git@github.com:benstafford/git_play.git

Add your name to roster.md file (open file in editor and save)

Add file to stage it:  

    $ git add --all

Commit your change:  

    $ git commit -m "Added my name to roster"

Push your changes up to GitHub:  

    $ git push origin master

[Hopefully, only the first person will be able to push easily. Ben will walk through]

If you can't push because the remote has changed, update your local with: 

    $ git pull

Resolve any conflicts (hopefully we'll see some) and get origin/master back into a good state.  Make sure everyone is up to date.

##### Branching
Create branch in which to do your work

    $ git checkout -b feature-<your first name>

Edit roster.md to put your birthdate next to your name (you can use fake DOB if you want).

Stage files (git add), and create new commit.

Push your local branch to a new remote branch:  

    $ git push -u origin <branch name that you created during git checkout -b>

Go to github.com/benstafford/git_play and create a pull request with your branch.


### Resource
[Learn Git Branching](http://pcottle.github.io/learnGitBranching/)
