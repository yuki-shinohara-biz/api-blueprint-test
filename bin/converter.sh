#!/bin/bash

cd `dirname $0`

files=()
files+=('../src/users.md')
files+=('../src/messages.md')


echo 'FORMAT: 1A' > ../api.md || exit $?
cat ${files[@]} | sed -e '/^FORMAT: 1A/d' >> ../api.md || exit $?
mkdir -p ../output 2>/dev/null
npx aglio -i ../api.md -o ../output/index.html || exit $?

exit 0