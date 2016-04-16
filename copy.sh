#!/usr/bin/env bash
# -*- coding=utf-8 -*-

#  Author: 易思龙 <ixxoo.me@gmail.com>
#  Create: 2015-07-04

shell_name=$(basename $0)
echo $shell_name
tar -jcvf - `ls -A | grep -v "$shell_name"` | tar -jxvf - -C ~/

echo "-----------------------------"
echo "please exec: source ~/.bashrc"
echo "-----------------------------"

