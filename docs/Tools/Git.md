---
title: "Git"
sidebar_position: 2
---


import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

## Version control

<Tabs>
<TabItem value="git" label="Git">

### Source Code Management (SCM):

- Version control systems, including Git, serve as the backbone for SCM in CI/CD. Developers use Git to manage and collaborate on source code changes. CI/CD systems pull the source code from version control repositories to build, test, and deploy applications.

### Continuous Integration (CI):

- CI involves automatically building and testing code changes whenever they are committed to the version control system. CI systems monitor the version control repository for changes and trigger automated builds and tests to ensure the code's integrity.

### Version Tagging and Release Management:

- Git is often used to tag specific versions of the codebase (e.g., releases) using tags. CI/CD pipelines can be configured to trigger specific actions (e.g., deployment to production) based on the creation of new version tags.

### Branching Strategies:

- Git's branching features are essential for implementing branching strategies in CI/CD. Developers can use feature branches for new features or bug fixes, and CI/CD systems can automate the testing and integration of these branches.

### Artifact Management:

- CI/CD pipelines often produce build artifacts (e.g., compiled binaries, Docker images). These artifacts can be versioned and stored in artifact repositories, with references to specific versions maintained in the version control system.

### Deployment Configuration:

- Deployment configurations, such as environment-specific settings or infrastructure as code, are often stored alongside the application code in the version control system. CI/CD pipelines reference these configurations to deploy applications consistently across different environments.

### Collaboration and Code Reviews:

- Collaboration features of Git, including pull requests or merge requests, facilitate code reviews. CI/CD systems can be configured to trigger additional checks or tests before allowing a pull request to be merged, ensuring code quality.


1. BASICS OF THE GIT FILE SYSTEM
    - Working directory = Contains all the files that are a part of our project.
        - Initialise a Git repository = A hidden directory is created inside the working directory called .Git.
          Monitors and track all files added to the project.
          git add * = put the state of the file that was just added to the project into a staging area within
          the project wd. Records the state using SHA1 hashes. No physical movement, but the status
          is updated from the staging area to a feature/master branch

    - COMMIT_EDITMSG = Plain text file containing the messages for each commit to the repository. Each line in the file
      is in order of the commit.

   -HEAD = Plain text file that contains a reference to the current branch that you are working on.

   -config = Contains the configuration information about your repository, such as the developer's username and email address.

   -description = Plain text file that contains the name of the repository. Typically used by Git web, a web front end
   to Git that you can install.

   -hooks = Contains scripts that you can create to set up some automated tasks that can be run during some particular
   phases of the Git process.

   -index = link between the database and what is currently sitting in the working directory.

   -rest directory = reference files in folders for the branches and tags of your repository.

</TabItem>
<TabItem value="commands" label="Commands">


 ## Set up Credentials

Register your git details to the configuration in set up: Configure environment - set up your identify for git to track changes

| Command                                          | Purpose                        |
|--------------------------------------------------|--------------------------------|
| Git config --global user.name "Name McName"      |                                |
| Git config --global user.email "email@email.com" |                                |
| git config --global core.editor "/usr/bin/vim"   | sets up the text editor to use |


        If you are getting this error: remote: invalid username or password
                --> Got to Credential Manager


        If you do not have permission to access the branch, it may be private.
                Checkout nameofyourremotebranch
                -->Ask the owner to add you as a contributor.

---

## Install

| Command         | Purpose                                                           |
|-----------------|-------------------------------------------------------------------|
| yum install git | Installs git on your system from your distribution's repositories |
| git --version   | Displays the version of git installed                             |
| man git         | Displays the main git manual page                                 |

---

## Initialise

| Command                                         | Purpose                                                                                                                                                                                                                                                                     |
|-------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Git init name-this-repo                         |                                                                                                                                                                                                                                                                             |
| Git init --bare name-this-larger-repository.git | When there are other branches from other contributors who are remote). A .git repo is made = working directory containing the configuration information about the repository and tracking information. This is a database file which contains details about the repository. |
| git checkout -b branch-name                     | Create a new branch and check it out. The remote branch is automatically created when you push it to the remote server.                                                                                                                                                     |

---

## Add

| Command           | Purpose        |
|-------------------|----------------|
| git add *         | Add everything |
| git add file-name | Add file       |
| git add src/.keep | Add folder     |

---

## Commit

| Command                                                     | Purpose                                                                                                |
|-------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| git commit -m "comment describing the change you have made" | Commit and describe changes made. All commit messages are recorded in the commit edit message file.    |
| git commit                                                  | Opens text editor e.g. VIM to write comments of change                                                 |
| cat git/COMMIT_EDITMSG                                      | see where commits are stored                                                                           |
| git log                                                     | locate actual commit itself e.g. ls .git/objects/92/                                                   |
| Git commit -a -m "bring changelog back"                     | commit back to project and skip staging area                                                           |
| SHA1 hash value                                             | Git takes the first 2 characters and creates a directory named from them under the object's directory. |
      
---

## Push

| Command                                                          | Purpose                                                                                                                                                                                                  |
|------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| git push --set-upstream remote-name-branch-name-remote-name      | The --set-upstream option sets up an upstream branch. For every branch that is up to date or successfully pushed, add upstream tracking reference, used by argument-less git-pull(1) and other commands. |


---

## Remove

| Command                         | Purpose                                                      |
|---------------------------------|--------------------------------------------------------------|
| Git rm src/.keep                |                                                              |
| Git rm -f sec/.keep             |                                                              |
| Git rm --cached CHANGELOG.md    | Remove change from index but leave file in working directory |

---

## Ignore

Hidden git ignore file in directory e.g. highly changeable documents of no importance.

| Command                                                              | Purpose                                                                  |
|----------------------------------------------------------------------|--------------------------------------------------------------------------|
| mkdir build                                                          | Create a build directory for compiled code                               |
| Git add .gitignore                                                   | Add a gitignore file to list all the elements to be ignored              |
| Git status                                                           | Check the git status of the repo                                         |
| Git commit -m "adding a .gitignore file"                             | Commit the gitignore file                                                |
| echo "build/*" -                                                     ||
| gitignore                                                            | Anything in the build directory, added to gitignore, will not be tracked |
| Git commit -a -m "updated gitignore file to exclude build directory" ||

---

## Status Checks

| Command       | Purpose                                                                                      |
|---------------|----------------------------------------------------------------------------------------------|
| Git status    | Tells us which files are in the staging area- RECORD THE STATE OF THE FILE USING SHA1 HASHES |
| Git status -s | status of branches already added                                                             |
| Git status -v | verbose detail of changes made                                                               |
| A             | added                                                                                        |
| M             | unstaged (modification). Must git add before git commit for the changes to be included       |
| D             | deleted                                                                                      |
| ??            | not added yet                                                                                |

---

## Compile and build

| Command                                                               | Purpose                                              |
|-----------------------------------------------------------------------|------------------------------------------------------|
| g++ -o build/project-name src/file-name.txt                           |                                                      |
| ls build/                                                             ||
| build/project-name                                                    ||
| git status                                                            ||
| vim ChangeLOG.md                                                      | changed files have a tilda ~ on the end              |
| echo *~ >-                                                            ||
| .gitignore                                                            ||
| git status                                                            ||
| git commit -a -m "updated changelog and ignore other backup versions" ||
| git check-ignore *~                                                   | checks what files with this feature has been ignored |


---

## Rebase and Push

| Command                                             | Purpose                      |
|-----------------------------------------------------|------------------------------|
| git status                                          ||
| git log                                             ||
| git rebase --continue                               ||
| git rebase -i origin/master                         | Interactive rebase to master |
| git push --force-with-lease origin remoteBranchName ||





</TabItem>
</Tabs>

