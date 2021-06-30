# Bash Helpers

### Table of Contents
- [Installation](#installation)
- [Bash Self Update command](#bash-self-update-command)
- [Print Help](#print-help)
- [Uninstall](#uninstall)


## Installation
1. Clone this repository in your User root directory

2. Edit one of the following files according to your base operating system :
- `~/.bashrc` for Linux
- `~/.bash_profile` for MacOS

3. Append following code

	`source ~/bash-helpers/include-helpers.sh --all`

	`NOTE:` Instead of `--all` you can mention any one or more of the following flags.

	- `-g | --git` : To use git helper comands. 
	- `-d | --docker` : To use docker helper comands. 
	- `-p | --prompt` : To use modified prompt message that features git related information


## Bash Self Update command
You can run `bash-self-update` command to update these scripts from time-to-time.


## Print Help
Run following command to print comands help in terminal
	`bashhelp`


## Uninstall
1. Edit one of the following files according to your base operating system :
- `~/.bashrc` for Linux
- `~/.bash_profile` for MacOS

2. Remove following or similar code

	`source ~/bash-helpers/include-helpers.sh --all`