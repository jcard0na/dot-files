#! /bin/bash

for file in .*
do
	[ -f ${file} ] && ln -sfv ${PWD}/${file} ~
done

rm -fr ~/.vim
ln -sfv ${PWD}/.vim ~

echo
echo =========================================
echo Now add the following line to your .bashrc
echo
echo   'for DOTFILE in ~/dot-files/system/*; do [ -f ${DOTFILE} ] && source ${DOTFILE}; done'
echo
echo And next time you fire vim, run
echo
echo :PluginInstall
echo
