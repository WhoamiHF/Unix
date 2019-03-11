if [ "$1" ==  "--typ" ]
then
  if [ -e "$2" ]
  then
   if [ -L "$2" ]
   then
   echo "Link"
   elif
     [ -f "$2" ]
    then
    echo "Regular file"
    else
    file "$2"
    fi
  else
  echo "error - file does not exist"
  exit 1
  fi
elif [ "$1" ==  "--help" ]
   then
   echo "--typ - returns type of file or error if file does not exist."
   echo "--help - returns this help"
else
echo "not a correct command. Type --help"
fi