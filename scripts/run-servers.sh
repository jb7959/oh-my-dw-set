if [ $# -ne 1 ]; then
 echo "Usage: $0 param1 for env => local, dev, stage, live, etc.."
 echo ""
 echo ">>>> sh run-servers.sh --dev"
else

echo :: Beginning :: run-servers.sh

if [ $0 = "local" ];
then
  docker-compose up -d --env-file ".local-env"
elif [ $0  = "dev" ]
then
  docker-compose up -d --env-file ".dev-env"
elif [ $0  = "stage" ]
then
  docker-compose up -d --env-file ".stage-env"
elif [ $0  = "live" ]
then
  docker-compose up -d --env-file ".live-env"
else
  echo "You have to use => local, dev, stage"
  echo "Now $0"
  echo :: Please try again :: run-servers.sh
fi
## https://docs.docker.com/compose/environment-variables/
docker-compose up -d --env-file $0

echo :: Finished :: run-servers.sh

fi
