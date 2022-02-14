#!/usr/bin/env bash
help() {
  echo "This is build local"
  echo ""
  echo "Syntax: build.sh -a lunav2 -t dev"
  echo "options:"
  echo "a    App."
  echo "t    Tag."
  echo "h    Print this help."
​
}
​
while [ $# -gt 0 ]; do
  key="$1"
​
  case $key in
    -t) TAG="$2"; shift 2;;
    -a) APP="$2"; shift 2;;
    -h) help; exit;;
  esac
done
​
: ${TAG=None}
: ${APP=None}
​
if [ "${TAG}" = None ] || [ "${APP}" = None ] ; then
  echo "Please input TAG or SERVICE to run test case"
  echo "============"
  help
  exit 1
fi
​
# CD to project
cd ~/go-workspace/src/gitlab.com/crypto-game-portal/monorepo
​
echo "******************************"
echo "BUILD With  $APP and $TAG"
echo "******************************"
echo "Step 1: Build image -------------------------------------------------\n"
make build-image-local service=${APP} tag=${TAG}
wait
echo "Step 2: Docker push -------------------------------------------------"
docker push registry.gitlab.com/crypto-game-portal/monorepo/${APP}:${TAG}
wait
echo "Step 3: Uninstall pods ----------------------------------------------"
helm uninstall ${APP} --kube-context eks-${TAG}
wait
echo "Step 4: Install pods ------------------------------------------------"
cd infrastructure/helm/${APP}/${TAG}
helm install ${APP} . --kube-context eks-${TAG} --set image.customTag=${TAG}
wait
​
echo 'All done'
