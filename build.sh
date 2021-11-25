echo -e "# don't read this file\n# it ruins the MYSTERY\n" > ./game.shar
shar -T -V -n "'USB Flash Drive'" -m "./USB Flash Drive" | head -n -1 | sed '/NZDT/ c\# Made on 2009-03-04 03:27 EET by <di-flaherty@gpd-11>.' | sed "/ata/c\\# Source directory was '/home/di-flaherty/case-files/kiran-patel/'." >> ./game.shar
cat <<'EOF' >> ./game.shar
cd './USB Flash Drive'
cd ./site
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
git commit index.html --author "Kim Soroka <k.soroka@mlmsolutions.com>" -m "Provided copy for About Page"
mv ./index5.html ./index.html
git commit index.html -m "fix ordering"
mv ./index6.html ./index.html
git commit index.html -m "okay, sorry, have some pictures"
echo
echo "============================================================="
echo
echo "Kiran Patel is dead."
echo "                     Find the murderer."
echo "                                        Flash drive attached."
echo
echo "============================================================="
echo


# don't read this file
# it ruins the MYSTERY
EOF
