# vset -- simple tool for setting up consistent projects for V

## Design Requirements
    - extendable and consistent
    - high stage build/compile/run performance
    - consistent stage build/compile/run logging
    - automate stage build/compile/run documentation

## useful build commands
    - make

        - build **working**
            * makes a consistent directory layout, stores a copy/backup src in bin/backup/
            * deletes original .git repo and initializes a new one

        - compile **modify!**
            * compiles v files in src/main

	- backup **working**
	    * backs up src/ and data/ and docs/ to bin/

	- git-init **in-progress**
	    * sets up .git directory inside of project and removes old one.

        - git-pull **working**
            * pulls v files from master branch

        - git-push **working**
            * pushes v files in src/main

        - clean **working**
            * cleans temporary files from bin/ and log/

        - kill **working**
            * resets the project back to its basic form

	- create-doc **working**
	    * creates template for .md files and stores it inside doc/todo/

	- save-doc **working**
	    * saves a backup of doc/todo/ files inside of log/temp/doc and doc/
	- create-template **working**
	    * creates template for .v files and stores it inside src/
	- clean-template **working**
	    * delete the template after you have renamed and modified the temp.v file

 	- data-clean **working**
	    * deletes all data stored in the directory.
	 - vb-mc **in-progress**
	    * a batch move and compile command. still needs some modifications

## automated project structure
    - bin/
        - /backups/ temporary storage for a src and data backups
        - /temp/ temporary files are stored here (including backups of past documentation)
        - /exec/ copies of executable binary files
        - /sh/ copies only safe and batch from vsh/shell/
    - doc/
        - stores .md & .txt generated modules and tests
    - data/
	- /csv/
	- /json/
	- /xml/
    - log/
        - /temp/ temporary storage for logging output from building, running, and cleaning
        - /temp/doc temporary storage for documents that are being saved and modified.
    - src/
        - modules and tests and code and executables are developed here.
    - vsh/
	 - shell/
		- vbatch/ shell scripts that enable batch moving and compiling of the src/ directory. 
		- vdang/ **CAREFUL** shell scripts that clean, destroy, or create a new project.
		- vgit/  shell scripts that can automate your interaction with github
		- vmake/ shell scripts that can make file templates for .md and .v
		- vsafe/ shell scripts that backup, compile, log, and run
    - Makefile
    - README.md

