#!/usr/bin/env bash
# -*- coding=utf-8 -*-

echo 'if [ -f ~/.bashrc ]; then source ~/.bashrc; fi' >> ~/.bash_profile

real_file_name=`readlink -f ${0}`
SHELL_DIR=$(cd `dirname ${real_file_name}`; pwd)
cd ${SHELL_DIR}
tar --exclude=copy.sh --exclude=README.md --exclude=.bashrc --exclude=.git -cf - ./ | tar -xvf - -C ~/
cat .bashrc >> ~/.bashrc

echo "-----------------------------"
echo "please exec: source ~/.bashrc"
echo "-----------------------------"
