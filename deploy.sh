#!/bin/bash
#
# Deploy Jekyll site to Github
# Copyright 2022 pforret

function main() {


#  jekyll_taxonomy generate category
#  git add category

  if [[ "$1" == "generate" ]] ; then
    ./generate2.sh -c -f country
    ./generate2.sh -c -f city
    ./generate2.sh -c -f sport
    ./generate2.sh -c -f animal
    ./generate2.sh -c -f tourism
  fi

  jekyll_taxonomy -c -p country generate tag
  jekyll_taxonomy -p city generate tag
  jekyll_taxonomy -p sport generate tag
  jekyll_taxonomy -p animal generate tag
  git add tag

  git add country
  git add city
  git add sport
  git add animal
  git add images
  git add _data

  if [[ "$1" == "push" ]] ; then
    setver auto && setver new patch
  fi
}

main "$@"
