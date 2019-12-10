# vset -- simple tool for setting up consistent projects for V

## Design Requirements
    - extendable and consistent
    - high stage build/compile/run performance
    - consistent stage build/compile/run logging
    - automate stage build/compile/run documentation

## useful build commands
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
        - temporary storage for executables and backups
        - backups are generated from build stage
        - executables are generated after compiling bin/backups/
    - doc/
        - temporary storage for storing .md & .txt generated modules and tests
        - docs are generated after build stage
    - log/
        - temporary storage for logging output from building, running, and cleaning
    - src/
        - modules and tests are developed here
        - config files := Dockerfile, .yml, .json, .ini, .csv, etc.. are stored here
    - vsh/
        - global script directory
            - shell
            - v
    - Makefile
    - README.md

