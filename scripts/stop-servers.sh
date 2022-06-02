echo ":: Beginning :: stop-servers.sh"
echo "If you need help, please add param -h"
echo "> stop-servers.sh -h"

if [ $1 = "-H" ] || [ $1 = "-h" ] || [ $1 = "-HELP" ] || [ $1 = "-help" ]; then
 echo "Option"
 echo "  -d : Remove all containers on Docker"
elif [ $1 = "-d" ]; then
  printf 'Do you want to remove all containers? (y/n) '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo Remove all containers!!
    docker-compose down
  else
    echo please try again.
  fi
else
  docker-compose stop
echo ":: Finished :: stop-servers.sh"

fi
