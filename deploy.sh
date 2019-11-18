#!/bin/bash
echo Athena username?
read USERNAME

JEKYLL_ENV=production bundle exec jekyll build
rsync -r --delete-after ./_site/ $USERNAME@athena.dialup.mit.edu:/afs/athena.mit.edu/activity/m/mitaly/web_scripts/website
