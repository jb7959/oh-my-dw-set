if [ $# -ne 1 ]; then
 echo "Usage: $0 param1 for env => local, dev, stage, live, etc.."
 echo ""
 echo ">>>> sh run-servers.sh --dev"
else

echo :: Beginning :: run-servers.sh

if [ $1 = "-local" ];
then
  docker-compose --env-file .local-env config
  docker-compose up -d
elif [ $1  = "-dev" ]
then
  docker-compose --env-file .dev-env config
  docker-compose up -d
elif [ $1  = "-stage" ]
then
  docker-compose --env-file .stage-env config
  docker-compose up -d
elif [ $1  = "-live" ]
then
  docker-compose --env-file .live-env config
  docker-compose up -d
else
  echo "You have to use => local, dev, stage"
  echo "Now $1"
  echo :: Please try again :: run-servers.sh
fi

echo :: Finished :: run-servers.sh

fi
