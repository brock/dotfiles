#!/usr/bin/env zsh
# Docker aliases

alias dps='docker ps --format="table {{.Names}}\t{{.Ports}}\t{{.Status}}" | (read -r; printf "%s\n" "$REPLY"; sort -k 1 )'
alias docker-stop='docker kill $(docker ps -q)'
alias dpurge='docker stop `docker ps -qa` && docker rm $(docker ps -a -q);docker rmi -f $(docker images -q);yes y | docker volume prune'
