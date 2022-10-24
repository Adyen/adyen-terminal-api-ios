#!/bin/bash

set -e # Any subsequent(*) commands which fail will cause the shell script to exit immediately

function echo_header {
  echo " "
  echo "===   $1"
}

function print_help {
  echo "Test Swift Package Integration"
  echo " "
  echo "test-SPM-integration.sh"
  echo " "
  echo "options:"
  echo "-h, --help                show brief help"
}

while test $# -gt 0; do
  case "$1" in
    -h|--help)
      print_help
      exit 0
      ;;
  esac
done

echo_header "Build"

swift package clean
swift build