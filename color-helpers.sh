#!/bin/bash

function black() {
	echo -e "\e[30m${1}\e[0m"
}

function red() {
	echo -e "\e[31m${1}\e[0m"
}

function green() {
	echo -e "\e[32m${1}\e[0m"
}

function yellow() {
	echo -e "\e[33m${1}\e[0m"
}

function blue() {
	echo -e "\e[34m${1}\e[0m"
}

function magenta() {
	echo -e "\e[35m${1}\e[0m"
}

function cyan() {
	echo -e "\e[36m${1}\e[0m"
}

function white() {
	echo -e "\e[37m${1}\e[0m"
}

function gray() {
	echo -e "\e[38;5;242m${1}\e[0m"
}

function bold() {
	echo -e "\e[1m${1}\e[0m"
}

function clr() {
	echo -e "\e[0m${1}\e[0m"
}