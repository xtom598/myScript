#!/bin/bash

FILE='pwd'

git_update() {

    echo "start git update"
    git pull
}

main() {
  # if [ -d $FILE ];
  # then

    for FILE1 in `ls `; do
      if [ -d $FILE1 ]
      then
        echo $FILE1
        cd $FILE1
        FILE1=`pwd`
        for FILE2 in `ls `; do
          if [ -d $FILE2 ]
          then
            echo $FILE2
            cd $FILE2
            FILE2=`pwd`
            if [ -f ".gitignore" ];
            then
              echo "git update"$FILE2
              git_update
            fi
          fi
        cd $FILE1
        done
      fi
    cd $FILE
  done
}

main