GITHUB_REPO=$1
DOCKER_HUB_REPO=$2
DIR_NAME=$(basename "$GITHUB_REPO")

git clone "https://github.com/${GITHUB_REPO}.git"

cd "$DIR_NAME" || exit

docker build -t "$DOCKER_HUB_REPO" .

docker push "$DOCKER_HUB_REPO"

echo "Done!"
