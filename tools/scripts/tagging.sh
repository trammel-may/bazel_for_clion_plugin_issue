#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

git_commit="$(git describe --tags --always)"
build_date="$(date -u '+%Y%m%d')"
docker_tag="v${build_date}-${git_commit}"

cat <<EOF
STABLE_BUILD_GIT_COMMIT ${git_commit}
DOCKER_TAG ${docker_tag}
EOF
