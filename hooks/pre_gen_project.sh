#!/bin/bash

# github check
REPO_URL=git@github.com:emilefraser/{{ cookiecutter.project_slug }}
echo "REPO_URL to check: ${REPO_URL}"

[ "$(git ls-remote $REPO_URL 2> /dev/null)" ] && {
	echo "${REPO_URL} already exists;"
} || {
	echo "${REPO_URL} does NOT exist;
    gh repo create {{ cookiecutter.project_slug }} --public
}
