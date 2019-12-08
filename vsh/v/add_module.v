module main

import (
	os
)

const (
	HELP = "-h"
	MODULE = '-m'
	DIR = '-d'
)


pub fn main() {
	arguments := os.args[0..]
	println(arguments)

	size := arguments.len

	if arguments.len > 1 {
		resp := argument_help(arguments)
		println(resp)
		os.system(resp)
	}
	else {
		panic('wrong arg length --')
	}
	
}

fn argument_help(arguments []string) string{
	mut resp := ''
	if arguments[1] == HELP {
		println('help command')
		// needing the help menu
		resp = 'sending help flag'
	}
	else if arguments[1] == MODULE {
		println('module command')
		// wanting to add a module
		if !isnil(arguments[2]) {
			resp = "git clone" + " " + arguments[2]
		}
	}
	else {
		println('invalid flag')
		// needing the help menu
		resp = 'sending help flag'
	}
	return resp
}