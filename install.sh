#! /bin/bash

for file in .*
do
	[ -f ${file} ] && ln -sfv ${PWD}/${file} ~
done

echo
echo =========================================
echo Now add the following line to your .bashrc
echo
echo   'for DOTFILE in ~/dot-files/system/*; do [ -f ${DOTFILE}] && source ${DOTFILE}; done'
