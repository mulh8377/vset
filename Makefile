# generate the project, compile the project, backup the project
build: v-gen v-snap

# compile the project!
backup: v-snap

# safe
compile: v-comp

# log output from run first, clean the project after (remove all temporary files)
clean: v-cln

# log output from clean first, remove entire project after (remove everything besides vsh/shell/ and Makefile)
kill: v-kill

#############################################################################################
# delete vsets .git directory, initialize an empty .git after
git-init: v-init

# clean the directory and then git push!
git-push: v-cln v-push

# git pull and then backup the project!
git-pull: v-pull v-snap
#############################################################################################

# do batch move compile
vb-mc: vb-move vb-comp

# create v file template
create-template: v-template
	cp temp.v src/
	cp src/temp.v src/v_template.v
	rm -f src/temp.v
	rm -f temp.v

# remove the v file template after you rename it to what you want.
clean-template:
	rm -f src/v_template.v

# create md file template
create-doc: md-template
	rm -f temp_doc.md

# save md files in todo/
save-doc:
	cp -r doc/todo/*.md doc/
	cp -r doc/*.md log/temp/doc

# delete extra copies of md files
clean-doc: md-clean
	rm -f log/temp/todo/*.md
	rm -f doc/todo/*.md
	rm -rf bin/temp/doc/todo/

md-template:
	mkdir log/temp/todo/
	mkdir log/temp/doc/
	bash vsh/shell/vmake/base_doc_file.sh > doc/todo/temp_doc.md
	cp doc/todo/temp_doc.md doc/
	cp doc/todo/temp_doc.md log/temp/todo/temp_doc.md

md-clean:
	rm -f log/temp/todo/*.md
	rm -f log/temp/doc/*.md
	rmdir log/temp/todo/
	rmdir log/temp/doc/
	rm -rf doc/todo/*.md

data-clean: csv-clean json-clean xml-clean

csv-clean:
	rm -f data/csv/*.csv

json-clean:
	rm -f data/json/*.json

xml-clean:
	rm -f data/xml/*.xml

v-template:
	bash vsh/shell/vmake/base_v_file.sh > temp.v

v-gen:
	bash vsh/shell/vdang/vcreate.sh

v-comp:
	bash vsh/shell/vsafe/vcompile.sh

v-cln:
	bash vsh/shell/vdang/vclean.sh

v-run:
	bash vsh/shell/vsafe/vrun.sh

v-log:
	bash vsh/shell/vsafe/vlogger.sh

v-snap:
	bash vsh/shell/vsafe/vbackup.sh

v-kill:
	bash vsh/shell/vdang/vthanos.sh

v-init:
	bash vsh/shell/vit/vinit.sh

v-push:
	bash vsh/shell/vgit/vpush.sh

v-pull:
	bash vsh/shell/vgit/vpull.sh

vb-move:
	bash vsh/shell/vbatch/vmove.sh

vb-comp:
	bash vsh/shell/vbatch/vcomp.sh

