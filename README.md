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
        - git-pull **working**
            * pulls v files from master branch
        - git-push **working**
            * pushes v files in src/main
        - clean **working**
            * cleans temporary files from bin/ and log/
        - kill **working**
            * resets the project back to its basic form

## automated project structure
    - bin/
        - /backups/ temporary storage for a src backups
        - /temp/ temporary files stored here
        - /exec/ copies of executable binary files
        - /sh/ copies only safe and batch from vsh/shell/
    - doc/
        - temporary storage for storing .md & .txt generated modules and tests
    - log/
        - /temp/ temporary storage for logging output from building, running, and cleaning
        - /date/ permanent storage for logs from a specific date
    - src/
        - modules and tests and config files := Dockerfile, .yml, .json, .ini, .csv, etc.. are stored here
    - vsh/
        - global script directory
            - shell
    - Makefile
    - README.md

