#!/bin/sh
echo 'Trino client check beginning!'

# https://trino.io/docs/current/installation/cli.html
client/trino-cli-382-executable.jar --version

# TODO: check the servers status

echo 'Trino client check complete!'
