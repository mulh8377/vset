# generate the project, compile the project, backup the project
build: v-gen v-snap

# compile the project!
backup: v-snap

# safe
compile : v-comp

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

