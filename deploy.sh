#!/bin/bash
#
# Deploy Jekyll site to Github
# Copyright 2022 pforret

function main() {

topics=$(find _data -type f -name "*.csv" | sort | while read -r file ; do basename "$file" .csv ; done)
#  jekyll_taxonomy generate category
#  git add category

  if [[ "$1" == "1" ]] ; then
    for topic in $topics ; do
      echo "## GENERATE $topic pages                         "
      ./generate2.sh -c -f "$topic"
      echo "-- Done @ $SECONDS secs                             "
    done
  fi

  if [[ "$1" == "2" ]] ; then
    find tag -type f -name "*.md" -exec rm -fr {} \;
    for topic in $topics ; do
      echo "## GENERATE $topic tags"
      jekyll_taxonomy -p "$topic" generate tag
    done
    git add tag
  fi

  if [[ "$1" == "3" ]] ; then
    git add _data
    git add images
    for topic in $topics ; do
      echo "## GIT ADD $topic"
      git add "$topic"
    done
    setver auto && setver new patch
  fi

}

main "$@"
