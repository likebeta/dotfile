#!/usr/bin/env bash
# -*- coding=utf-8 -*-

#  Author: 易思龙 <ixxoo.me@gmail.com>
#  Create: 2015-07-04

real_file_name=`readlink -f ${0}`
SHELL_DIR=$(cd `dirname ${real_file_name}`; pwd)
cd ${SHELL_DIR}
tar -cf - ./ --exclude=copy.sh --exclude=README.md --exclude=.bashrc --exclude=.git | tar -xvf - -C ../
cat .bashrc >> ~/.bashrc

echo "-----------------------------"
echo "please exec: source ~/.bashrc"
echo "-----------------------------"

