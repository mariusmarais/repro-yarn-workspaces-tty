#!/bin/bash

echo '=====> Direct invocations...'
echo 'Normal invocation...'
./package1/test.js

echo 'Redirecting stdin...'
echo '' | ./package1/test.js

echo 'Redirecting stderr...'
./package1/test.js 2>/dev/null

echo 'Redirecting stdout...'
./package1/test.js | cat

echo 'Redirecting all...'
echo '' | ./package1/test.js 2>&1 | cat

echo ''

echo '=====> Via yarn...'
echo 'Directly in package1 dir...'
(cd package1 && yarn run test)

echo 'From workspace root with "workspace"...'
yarn workspace package1 run test

echo 'From workspace root with "workspaces foreach"...'
yarn workspaces foreach run test
