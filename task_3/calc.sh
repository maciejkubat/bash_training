#!/bin/bash

set -eu

calc() {
	sum=$(( ${1} + ${2} ))
	diff=$(( ${1} - ${2} ))
	prod=$(( ${1} * ${2} ))
	div=$(( ${1} / ${2} ))
	echo "Suma: ${sum}"
	echo "Różnica: ${diff}"
	echo "Iloczyn: ${prod}"
	echo "Iloraz: ${div}"
}

test_num() {
	var=${1}
	if [ -n "${var}" ] && [ "${var}" -eq "${var}" ] 2>/dev/null; then
		echo number
	else
		echo not a number
	fi
}

calc_1() {
	echo "Podaj pierwszą liczbę:"
	read num1
	if [ "${num1}" -eq "${num1}" ] 2>/dev/null; then
		echo "Podałeś liczbę"
	else
		echo "Nie podałeś liczby"
		exit 1
	fi
	echo "Podaj drugą liczbę:"
	read num2
	if [ "${num2}" -eq "${num2}" ] 2>/dev/null; then
		echo "Podałeś liczbę"
	else
		echo "Nie podałeś liczby"
		exit 1
	fi
	sum=$(( ${num1} + ${num2} ))
	diff=$(( ${num1} - ${num2} ))
	prod=$(( ${num1} * ${num2} ))
	div=$(( ${num1} / ${num2} ))
	echo "Suma: ${sum}"
	echo "Różnica: ${diff}"
	echo "Iloczyn: ${prod}"
	echo "Iloraz: ${div}"
}

calc_2() {
	echo "Podaj pierwszą liczbę:"
	read num1
	echo "Podaj drugą liczbę:"
	read num2
	sum=$(bc -l <<< "${num1} + ${num2}")
	diff=$(bc -l <<< "${num1} - ${num2}")
	prod=$(bc -l <<< "${num1} * ${num2}")
	div=$(bc -l <<< "${num1} / ${num2}")
	echo "Suma: ${sum}"
	echo "Różnica: ${diff}"
	echo "Iloczyn: ${prod}"
	echo "Iloraz: ${div}"
}

calc_2
