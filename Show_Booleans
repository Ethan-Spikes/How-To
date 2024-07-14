#!/bin/bash

Defined_if_statement() {

	echo "would you like to do one thing?(y/n)"
	read answer
	if [ $answer == 'y' ]; then
		echo 'thing'
	fi
} 

Defined_while_loop() {

	echo "would you like to do one other thing?(y/n)"
	read answer
	if [ $answer == 'y' ]; then
		while [ $answer == 'y' ]; do
			echo 'other thing'
			echo 'wanna do it again?(y/n)'
			read answer
		done
	fi
} 

Main() {

	Defined_if_statement
	Defined_while_loop

}

Main
