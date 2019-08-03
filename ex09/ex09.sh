#!/bin/bash
if [ -z $1 ] || [ -z $2 ]; then
  exit 1
  fi

  if [ "$1" = "-u" ] || [ "$1" = "--url" ]; then
	  cat $2 | grep -Po "(http|https)://[a-zA-Z0-9./?=_-]*"

  elif [ "$1" = "-e" ] || [ "$1" = "--email" ]; then
      grep -Po "\b[A-Za-z0-9._%+-]+@[A-Za-z.-]+\.[A-Za-z]{2,6}\b" $2 | sort | uniq
  else
	  echo ""
	  exit 1
  fi
