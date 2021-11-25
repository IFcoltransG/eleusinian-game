shar -T -V -n "'USB Flash Drive'" -m "./USB Flash Drive" | head -n -1 | sed '/NZDT/ c\# Made on 2007-03-04 03:27 PPST by <di-flaherty@qipd-11>.' | sed "/ata/c\\# Source directory was '/home/di-flaherty/case-files/kiran-patel/'." > ./game.shar
cat <<'EOF' >> ./game.shar
cd 'USB Flash Drive'
echo Kiran Patel is dead. Find the murderer. Flash drive attached.
EOF
