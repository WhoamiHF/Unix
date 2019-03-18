if [ "$1" == "--normal" ]; then
  for i; do
   echo $i
   done
elif [ "$1" == "--reverse" ]; then
   for (( i=$#;i>0;i-- ));do
    echo "${!i}"
    done
elif [ "$1" == "--subst" ]; then
  for i; do
  echo ${i//$2/$3}
  done
elif [ "$1" == "--len" ]; then
   for i; do
   echo -n  "${#i} "
   done
   echo ""
elif [ "$1" == "--help" ]; then
  echo "type --normal to print arguments"
  echo "type --reverse to print arguments in reverse"
  echo "type --subst a b c d.. to change a to b in each argument"
  echo "type --len to get length of each argument on one line."
fi