#!/usr/bin/env sh
dir="dist"

# STOP error
set -e

npm run build
cp CNAME $dir/CNAME
cd $dir
rm -rf *.map.js

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:zhendozzz/zhendozzz.github.io.git master:master

cd ..
rm -rf $dir
