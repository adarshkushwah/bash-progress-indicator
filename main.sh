#!/bin/bash -e
# shellcheck disable=SC1091

declare -rx STEPS=(
  'pre-install'
  'install'
  'post-install'
)
declare -rx CMDS=(
  'sleep 1'
  'sleep 1'
  'sleep 1'
)

case $1 in
  progress)
    . 'progress.sh'
    ;;
  progress_advanced)
    . 'progress_advanced.sh'
    ;;
  spinner*)
    . 'spinner.sh'
    ;;
  *)
    echo "Invalid option $1!"
    exit 1
esac

start
