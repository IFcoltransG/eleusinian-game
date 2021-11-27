#!/bin/bash
git init .
git config user.email "k.patel@mlmsolutions.com" 
git config user.name "Kiran Patel"
mv ./index1.html ./index.html
git add index.html
git commit index.html -m "site from template"
mv ./index2.html ./index.html
git commit index.html -m "add peyton immediately so I don't get murdered :P"
mv ./index3.html ./index.html
git commit index.html -m "no idea what to write for these" -m "someone do copy please?"
mv ./index4.html ./index.html
git commit index.html -m "Provided copy for About Page" --author "Kim Soroka <k.soroka@mlmsolutions.com>"
mv ./index5.html ./index.html
git commit index.html -m "fix ordering"
mv ./index6.html ./index.html
git commit index.html -m "oke, sorry! have some pictures"
mv ./index7.html ./index.html
git commit index.html -m "oh geez what fonts are you using" -m "you must be stopped Kiran, but any means necessary :)" --author "Celes D'Agostino <c.dagostino@mlmsolutions.com>"
cp ./index8.html ./index.html
git commit index.html -m ":)"
mv ./index9.html ./index.html
git commit index.html -m "update team information"
mv ./index8.html ./index.html
