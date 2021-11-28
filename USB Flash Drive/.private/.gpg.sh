for file in ./secure-*; do
mv "$file" "./${file#./secure-}";
gpg -c --no-symkey-cache --batch --passphrase "30/11/1979" "./${file#./secure-}";
rm "./${file#./secure-}";
done
cc ./decrypt-old.c -lncurses -o ./old.out
strip ./old.out
rm ./decrypt-old.c
