# H1

**How does tracking and adding changes make developers' lives easier?**

Tracking and adding changes makes developers lives easier because it creates several checkpoints within the codebase. Having these checkpoints are especially great when bugs are introduced into the code. The developer can then switch to a working point within the code, and more easily debug the issue.

**What is a commit?**

You can think of a commit as a snapshot of a small chunk of code. You can always go back to that snapshot,  look at who write that chunk of code, when they wrote it, and what changes occurred.

**What are the best practices for commit messages?**

The first line of the commit message should be a 50 character max description written in the present tense. You can also include an optional body which contains a longer, more meaningful commit message. The body should also use the present tense, highlight the reason for the change, and contrast the change with the previous behavior.

**What does the HEAD^ argument mean?**

It means one commit after the current HEAD.

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**

The three stages of a git change are:

1. Make changes to a file(s). Then run git status to see the state of the working directory.
2. In order to stage a tracked change you either can run git add . or git add file_name
3. Finally, you can commit your change by either running git commit or git commit -m "Short Description Here"


**Write a handy cheatsheet of the commands you need to commit your changes?**

Once you have changes ready to commit you should:

1. git status
2. git add . or git add file_name
3. git commit or git commit -m "Short Description Here"

**What is a pull request and how do you create and merge one?**

A pull request is a way to alert others that you have a modification to the code that needs to be reviewed, and if approved merged into the codebase.

1. Once you've commited the changes you have on your branch. You should push the branch to your remote repo.
2. When you navigate to the remote repo's main page you will see the pull request.
3. On the left hand side of the page click on the pull request section. It will then take you to the open pull request page.
4. Within that page make sure that the base fork and the head fork points to your forked copy. If not change that before you complete the pull request.
5. Then click on the create pull request button
6. You will then be taken to another screen where you should click on the merge pull request button.
7. Then click on confirm merge button
8. Finally, you should delete the branch on GitHub and locally on your machine.

**Why are pull requests preferred when working with teams?**

Pull requests are preferred when working with teams because master should be treated as the stable copy of your build. Before any new changes are introduced into master you should have your code reviewed, before it is fully merged in.
In order to do this a team member can push their feature branch to GitHub, and create a pull request. Then someone else can go in and review their code. If the pull request is accepted that person will then merge the code into master.