# generate the project, compile the project, backup the project
build: v-gen v-comp v-snap
# log output from build first, run the project after
run: v-log v-run
# log output from run first, clean the project after (remove all temporary files)
clean: v-log v-cln
# log output from clean first, remove entire project after (remove everything besides vsh/shell/ and Makefile)
kill: v-log v-kill
v-gen:
	bash vsh/shell/vcreate.sh

v-comp:
	bash vsh/shell/vcompile.sh

v-cln:
	bash vsh/shell/vclean.sh

v-run:
	bash vsh/shell/vrun.sh

v-log:
	bash vsh/shell/vlogger.sh

v-snap:
	bash vsh/shell/vbackup.sh

v-kill:
	bash vsh/shell/vthanos.sh
