#!/bin/bash

# github check
REPO_GH=git@github.com
REPO_USER={{ cookiecutter.github_username }}
REPO_NAME={{ cookiecutter.project_slug }}
REPO_URL=${REPO_GH}:${REPO_USER}/${REPO_NAME}
REPO_LICENSE="MIT"
REPO_TYPE="Packer"

echo "Checking if repo: ${REPO_NAME} exists at url: ${REPO_URL}"

[ "$(git ls-remote $REPO_URL 2> /dev/null)" ]

if [ "$(git ls-remote $REPO_URL 2> /dev/null)" ]
then
	echo "${REPO_NAME} already exists"
else
	echo "${REPO_NAME} does NOT exist"
	gh repo --public --license ${REPO_LICENCE} --gitignore ${REPO_TYPE} ${REPO_NAME}
fi
