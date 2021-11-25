shar -T -V -n "'USB Flash Drive'" -m "./USB Flash Drive" | head -n -1 | sed '/NZDT/ c\# Made on 2009-03-04 03:27 PPST by <di-flaherty@gpd-11>.' | sed "/ata/c\\# Source directory was '/home/di-flaherty/case-files/kiran-patel/'." > ./game.shar
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
echo
echo =============================================================
echo Kiran Patel is dead. Find the murderer. Flash drive attached.
echo =============================================================
echo
EOF
