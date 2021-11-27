for file in ./*.eml; do
gpg -c --no-symkey-cache --batch --passphrase "30/11/1979" $file;
done
rm ./*.eml
cc ./decrypt-old.c -lncurses -o ./old.out
strip ./old.out
rm ./decrypt-old.c
