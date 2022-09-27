#!/bin/bash

# github check
REPO_URL=git@github.com:emilefraser/{{ cookiecutter.project_slug }}

[ "$(git ls-remote $REPO_URL 2> /dev/null)" ] && {
	echo Repo Exists;
} || {
	echo Repo does NOT exist;
    gh repo create {{ cookicuter.project_slug }} --public
}
