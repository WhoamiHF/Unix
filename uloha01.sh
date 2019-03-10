if [ "$1" ==  "--typ" ]
then
  if [ -e $2 ]
  then
   file $2
  else
  return 1
  fi
elif [ "$1" ==  "--help" ]
   then
   echo "--typ - returns type of file or error if file does not exist."
   echo "--help - returns this help"
fi