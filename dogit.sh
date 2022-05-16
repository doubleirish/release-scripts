#!/usr/bin/env bash
if [ "$#" -eq 0 ]
then
  echo "run a git command on ALL subdirectory repos"
  echo "Usage: $0 <gitarg1> [gitarg2] [gitarg3] ..."
  exit 1
fi

for repo in  `ls  -d */`  ;do
   pushd . 
     cd $repo
     echo "===================== $repo ==============="
     git $@
   popd
done
exit
