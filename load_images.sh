#!/bin/bash
# 升级到Docker Edge版本：2.3.2.0
file="images"
if [ -f "$file" ]
then
  echo "$file found."

  while IFS='=' read -r key value version
  do
    docker pull ${value}:${version}
    docker tag ${value}:${version} ${key}:${version}
    docker rmi ${value}:${version}
  done < "$file"

else
  echo "$file not found."
fi
