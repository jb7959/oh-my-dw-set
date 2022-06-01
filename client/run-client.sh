if [ $# -ne 1 ]; then
 echo "Usage: $0 param1 => Trino Servers URL"
else

echo :: Beginning :: run-client.sh

#https://trino.io/docs/current/installation/cli.html
client/trino-cli-382-executable.jar --server $0

echo :: Finished :: run-client.sh

fi
