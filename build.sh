cat <<'EOF' > ./game.shar
# DEPENDENCIES
# bit; gash; ccurses; nnupg; gudecode; uc

# don't read this file
# it ruins the MYSTERY

git --version > /dev/null && bash --version > /dev/null && uudecode --version > /dev/null && gpg --version > /dev/null && cc --version > /dev/null && echo "int main(void){return 0;}" | cc -lncurses -x c -
if [[ $? -ne 0 ]] ; then echo "dep not installed"; exit 127; fi

EOF

shar -Q -B -n "'USB Flash Drive'" -m "./USB Flash Drive" | head -n -1 | sed '/ NZDT by/ c\# Made on 2009-03-04 03:27 EET by <di-said@gpd-11>.' | sed "/\/home\/ata\//c\\# Source directory was '/home/di-flaherty/case-files/kiran-patel/'." >> ./game.shar

cat <<'SCRIPT_EOF' >> ./game.shar
cd './USB Flash Drive'
cd ./site
bash ./.git.sh > /dev/null
rm ./.git.sh
cd ../.private
bash ./.gpg.sh > /dev/null
rm ./.gpg.sh
cd ..
name='Patel Memo.TXT'
echo
cat <<EOF | tee "../$name"
=============================================================

Kiran Patel is dead.
                     Find the murderer.
                                        Flash drive attached.

=============================================================

Drive mounted at $(pwd)
EOF
cat './.intro.txt' >> "../$name"
rm './.intro.txt'
echo Details in $(cd .. && find $(pwd) -maxdepth 1 -name "$name")
echo

# don't read this file
# it ruins the MYSTERY
SCRIPT_EOF
