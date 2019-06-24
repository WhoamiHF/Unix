sort -o social.txt social.txt
sort -o beverly_hills.txt beverly_hills.txt
sort -o actor.txt actor.txt
join -t, actor.txt beverly_hills.txt > pom
join -t, pom social.txt
rm pom