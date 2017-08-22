# Note: this won't work for anyone else, as tul is not a directory of yours
cd $tul
git log --author="Jonah" --date=unix --pretty=format:"%ad,%s" > tmp1.txt
git log --shortstat --author="Jonah" --pretty=tformat:"" | awk '{print $4}' > tmp2.txt
paste -d, tmp1.txt tmp2.txt
rm tmp1.txt tmp2.txt
cd -
