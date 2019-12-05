# vset -- simple tool for setting up consistent projects for V

## useful build commands
    - make
        - build **working**
            * makes a consistent directory layout, stores a copy/backup src in bin/backup/
        - run **in-progress**
            * compiles bin/backup/src-snap, runs the binary-file, logs output 
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
    - Makefile
    - README.md

## Design Requirements
    - extendable and consistent
    - fast stage build/compile/run performance
    - fast stage build/compile/run logging
    - automate stage build/compile/run documentation
