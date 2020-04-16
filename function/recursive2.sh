#!/bin/bash

function func(){
	let i++;
	echo $i
	func
	
}
func
