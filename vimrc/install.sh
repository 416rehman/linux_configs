#!/bin/bash
 SRC_DIR="./src"
 DEFAULT_INSTALL_FILE="$HOME/.vimrc"


function create_config() {

	# read the file path from the first argument
	file=$1

	# check if file is directory
	if [ -d $file ]; then
		echo "Error: $file is a directory"
		exit 1
	fi

	# check if file exists
	if [ -f $file ]; then
		echo "File $file already exists. Overwrite? (y/n)"
		read overwrite
		if [ "$overwrite" != "y" ] && [ "$overwrite" != "Y" ] && [ "$overwrite" != "yes" ]; then
			echo "Aborting"
			exit 1
		else
			echo "Overwriting $file"
			rm $file
		fi
	fi

        # read all the .vimrc files in the current directory and write them to the file
	touch $file
	for src_file in $SRC_DIR/*.vimrc; do
		cat $src_file >> $file
	done

	echo "Config file created at $file"
}


function main() {
	if [ $# -eq 0 ]; then
		create_config $DEFAULT_INSTALL_FILE
	else
		if [ $1 == "--help" ] || [ $1 == "-h" ]; then
			print_help
		else
			create_config $1
		fi
	fi
}


function print_help() {
	echo "Usage: ./create_config.sh [file]"
	echo "Creates a config file with all the .vimrc files in the current directory"
	echo "If no file is specified, the config file will be created in the home directory"
}

main
