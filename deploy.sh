#!/bin/bash
#
# Deploy Jekyll site to Github
# Copyright 2022 pforret

function main() {


#  jekyll_taxonomy generate category
#  git add category

  jekyll_taxonomy -c -p country generate tag
  jekyll_taxonomy -p city generate tag
  jekyll_taxonomy -p sport generate tag
  git add tag

  git add country
  git add city
  git add sport
  git add images

  if [[ "$1" == "push" ]] ; then
    setver auto && setver new patch
  fi
}

main "$@"
