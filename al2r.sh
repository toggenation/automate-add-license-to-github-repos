#!/bin/bash

# Automate adding license to all repos

eval $(ssh-agent -s)
ssh-add

source ./.env

REPOS=$(curl https://api.github.com/users/${GITHUB_USER}/repos?per_page=2000 \
    --header "authorization: Bearer ${GITHUB_TOKEN}" | jq -r '.[] | .name')

# REPOS=`ls -alh| grep ^d | awk '{print $9}' | grep -v '^\.'`

for i in $REPOS; do
    echo $i

    # clone the repo
    git clone git@github.com:toggenation/${i}.git $i

    # check to see if it has a LICENSE license.txt license.md in top directory

    ls $i/ | grep -q -i license
    RET=$?

    # If license is missing
    if [ $RET. = 1. ]; then

        echo $i No license

        cat LICENSE.skel | envsubst >$i/LICENSE.md

        cd $i/

        git add LICENSE.md

        git commit -am "Added license"

        git push

        cd ../

    fi

done
