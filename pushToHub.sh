export $(cat .env | awk 'NR == 1')
export $(cat .env | awk 'NR == 2')

postFix="${ARCHITECTUR}_${ROSVERSION}"
DOCKER_HUB_NAME="sausy/roscore:${postFix}"

docker push $DOCKER_HUB_NAME
