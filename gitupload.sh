#!/bin/bash

git checkout source
bundle exec jekyll build
git add --all
git commit -am "update post"
git branch -D master
git checkout -b master
git filter-branch --subdirectory-filter _site/ -f
git push --all
git checkout source

