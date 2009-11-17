
function r() {
  ORGPWD=`pwd`
  while  [ ! -d 'app' ] && [ $PWD != '/' ]
  do
    cd ..
  done

  if [ $# != 0 ]
  then
    if [ $PWD != '/' ]
    then
     script/$*
     cd $ORGPWD
     return
    fi
  fi

  if [ $PWD == '/' ]
  then
    echo "Cannot find rails project root."
    cd $ORGPWD
  fi
}

