#!/bin/bash
#
# Deploy Jekyll site to Github
# Copyright 2022 pforret

function main() {


#  jekyll_taxonomy generate category
#  git add category

  if [[ "$1" == "1" ]] ; then
    ./generate2.sh -c -f animal
    ./generate2.sh -c -f city
    ./generate2.sh -c -f country
    ./generate2.sh -c -f number
    ./generate2.sh -c -f sport
    ./generate2.sh -c -f tourism
  fi

  if [[ "$1" == "2" ]] ; then
    jekyll_taxonomy -c -p country generate tag
    jekyll_taxonomy -p animal generate tag
    jekyll_taxonomy -p city generate tag
    #jekyll_taxonomy -p number generate tag
    jekyll_taxonomy -p sport generate tag
    jekyll_taxonomy -p tourism generate tag
    git add tag
  fi

  if [[ "$1" == "3" ]] ; then
    git add _data
    git add animal
    git add city
    git add country
    git add images
    git add number
    git add sport
    git add tourism
    setver auto && setver new patch
  fi

}

main "$@"
