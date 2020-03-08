#!/bin/sh

echo -e "1\n$(pwgen)" | gpg --yes --recipient 'baphomet@a.b' --output result --encrypt -

echo "It is done.";
