export $(cat .env | awk 'NR == 1')
export $(cat .env | awk 'NR == 2')

postFix="${ARCHITECTUR}_${ROSVERSION}"
DOCKER_HUB_NAME_0="sausy/roscore:${postFix}"
#DOCKER_HUB_NAME_1="sausy/rosbase:${postFix}"

docker tag roscore/${ARCHITECTUR}:${ROSVERSION} DOCKER_HUB_NAME_0
docker push $DOCKER_HUB_NAME_0
