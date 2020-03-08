#!/bin/sh

echo -e "1\n$(pwgen)" | gpg --yes --recipient baphomet --output result --encrypt -

echo "It is done.";
