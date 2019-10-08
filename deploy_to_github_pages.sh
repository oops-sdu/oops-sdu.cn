#!/usr/bin/env bash
set -e

pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "${DIR}"

gitbook build

pushd _book

# required for custom domain at github pages
echo 'oops-sdu.cn' > CNAME

git init
git add -A
git commit -m 'deploy'

# publish to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# publish to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/oops-sdu/oops-sdu.cn.git master:gh-pages

popd
popd
