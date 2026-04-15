#!/bin/bash
exeName=$(grep "set(MY_EXECUTABLE_NAME" CMakeLists.txt | grep -o '"[^"]*"' | head -1 | tr -d '"')

if [ -n "$exeName" ]; then
  ./build/bin/$exeName
else
  echo "cannot find executable file path"
fi
