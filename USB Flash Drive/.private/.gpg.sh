shopt -s globstar
for file in ./**/secure-*; do
newname="${file%/*}/${file#*/secure-}"
mv "$file" "$newname";
gpg -c --no-symkey-cache --batch --cipher-algo AES256 --passphrase "30/11/1979" "$newname";
rm "$newname";
done
cc ./decrypt-old.c -lncurses -o ./old.out
strip ./old.out
rm ./decrypt-old.c
