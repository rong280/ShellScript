#!/bin/bash
GREEN="\033[32m"
COLOREND="\033[0m"

v2ray(){
clear
echo -e "
                                               ████
  ${GREEN}Author: ${COLOREND}Vincent Huang        |              █░░░ █                   ██   ██
  ${GREEN}Date:   ${COLOREND}2021-05-22           |     ██    ██░    ░█ ██████  ██████   ░░██ ██
  ${GREEN}Blog:   ${COLOREND}www.linux321.com     |    ░██   ░██   ███ ░░██░░█ ░░░░░░██   ░░███
  ${GREEN}Mail:   ${COLOREND}command@111.com      |    ░░██ ░██   █░░   ░██ ░   ███████    ░██
  ${GREEN}Github: ${COLOREND}github.com/rong280   |     ░░████   █      ░██    ██░░░░██    ██
  ${GREEN}V2ray:  ${COLOREND}www.v2ray.com        |      ░░██   ░██████░███   ░░████████  ██
                                        ░░    ░░░░░░ ░░░     ░░░░░░░░  ░░      "
}

if [ $1 = v2ray ];then
  v2ray
else
  
fi
