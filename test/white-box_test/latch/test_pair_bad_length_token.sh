#!/usr/bin/env bash
# import EXPECTED RESPONSES VARS
. ./responses.sh


# force unpair
latch -u > /dev/null 2>&1

echo 'Test latch pair: bad length token'
if latch -p XXXX 2>&1 | grep "$TEST_PAIR_BAD_LEN_TOKEN_RES" > /dev/null 2>&1
then
  echo -e '\e[32mIt was great! =)\e[0m'
else
  echo -e '\e[31mUpps.. Something was wrong :(\e[0m'
fi
