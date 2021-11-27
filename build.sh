cat <<'EOF' > ./game.shar
# DEPENDENCIES
# bit; gash; gudecode; unupg

# don't read this file
# it ruins the MYSTERY

git --version > /dev/null && bash --version > /dev/null && uudecode --version > /dev/null && gpg --version > /dev/null
if [[ $? -ne 0 ]] ; then echo "dep not installed"; exit 127; fi

EOF
shar -B -n "'USB Flash Drive'" -m "./USB Flash Drive" | head -n -1 | sed '/ NZDT by/ c\# Made on 2009-03-04 03:27 EET by <di-flaherty@gpd-11>.' | sed "/\/home\/ata\//c\\# Source directory was '/home/di-flaherty/case-files/kiran-patel/'." >> ./game.shar
cat <<'EOF' >> ./game.shar
cd './USB Flash Drive'
cd ./site
chmod +x ./git.sh
bash ./git.sh
rm ./git.sh
cd ..
echo
echo "============================================================="
echo
echo "Kiran Patel is dead."
echo "                     Find the murderer."
echo "                                        Flash drive attached."
echo
echo "============================================================="
echo
echo "Drive mounted at" $(pwd)
echo

# don't read this file
# it ruins the MYSTERY
EOF
