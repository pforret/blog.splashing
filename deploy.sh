#!/bin/bash
#
# Deploy Jekyll site to Github
# Copyright 2022 pforret

function main() {
  jekyll_taxonomy generate category
  git add category

  jekyll_taxonomy generate tag
  git add tag

  git add _posts
  git add images
  setver autopatch
}

main "$@"
