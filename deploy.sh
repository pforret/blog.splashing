#!/bin/bash
#
# Deploy Jekyll site to Github
# Copyright 2022 pforret

function main() {
  git add category
  git add tag
  git add _posts
  git add images
  setver auto
  setver new patch
  git commit -a -m "setver patch" && git push && git push --tags
}

main "$@"
