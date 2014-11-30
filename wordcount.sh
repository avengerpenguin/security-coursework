#!/bin/bash

perl texcount.pl "$@" | grep 'Words in text' | tail -n 1 | sed 's/.*: //g'
