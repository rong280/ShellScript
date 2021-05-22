#!/bin/bash
GREEN="\033[32;01m"
BIUE="\033[36;5m"
COLOREND="\033[0m"

v2ray(){
clear
echo -e "
                                               ${BIUE}████${COLOREND}
  ${GREEN}Author: ${COLOREND}Vincent Huang        |              ${BIUE}█░░░ █                   ██   ██${COLOREND}
  ${GREEN}Date:   ${COLOREND}2021-03-27           |     ${BIUE}██    ██░    ░█ ██████  ██████   ░░██ ██${COLOREND}
  ${GREEN}Blog:   ${COLOREND}www.linux321.com     |    ${BIUE}░██   ░██   ███ ░░██░░█ ░░░░░░██   ░░███${COLOREND}
  ${GREEN}Mail:   ${COLOREND}command@111.com      |    ${BIUE}░░██ ░██   █░░   ░██ ░   ███████    ░██${COLOREND}
  ${GREEN}Github: ${COLOREND}github.com/rong280   |     ${BIUE}░░████   █      ░██    ██░░░░██    ██${COLOREND}
  ${GREEN}V2ray:  ${COLOREND}www.v2ray.com        |      ${BIUE}░░██   ░██████░███   ░░████████  ██${COLOREND}
                                        ${BIUE}░░    ░░░░░░ ░░░     ░░░░░░░░  ░░${COLOREND}"
}

if [ $1 = v2ray ];then
  v2ray
fi
