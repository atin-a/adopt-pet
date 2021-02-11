#!/usr/bin/env sh
# abort on errors
set -e

# Make sure repo is updated with recent changes
git add .
git commit -m 'automated push'
git push -f git@github.com:atin-a/adopt-pet.git

# build

npm run build

# navigate into the build output directory

cd dist

git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:atin-a/adopt-pet.git master:gh-pages
cd -
