# generate the project, compile the project, backup the project
build:
	make v-gen
	make v-comp
	make v-snap
# log output from build first, run the project after
run:
	make v-log
	make v-run
# log output from run first, clean the project after (remove all temporary files)
clean:
	make v-log
	make v-cln
# log output from clean first, remove entire project after (remove everything besides vsh/ and Makefile)
kill:
	make v-log
	make v-kill
v-gen:
	bash vsh/vcreate.sh

v-comp:
	bash vsh/vcompile.sh

v-cln:
	bash vsh/vclean.sh

v-run:
	bash vsh/vrun.sh

v-log:
	bash vsh/vlogger.sh

v-snap:
	bash vsh/vbackup.sh

v-kill:
	bash vsh/vthanos.sh
