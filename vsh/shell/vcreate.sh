mkdir doc && touch doc/README.txt
mkdir log && mkdir log/temp
mkdir bin && mkdir bin/backup && mkdir bin/temp
mkdir src && touch src/main.v
## get rid of vsets normal directory
rm -rf .git && git init && touch .gitignore
