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

## vset structure
    - bin/
        - temporary storage for executables and backups
        - backups are generated after build stage
        - executables are generated after compiling the backups
    - doc/
        - temporary storage for storing .md & .txt generated modules and tests
        - docs are generated after build stage
    - log/
        - temporary storage for logging output from building, running, and cleaning
    - src/
        - modules and tests are developed here
    - vsh/
        - script directory
    - Makefile
    - README.md
