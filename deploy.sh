#!/bin/bash
echo Athena username?
read USERNAME

echo Generating website...
JEKYLL_ENV=production bundle exec jekyll build

echo Syncing files with MIT Athena server
rsync -r --delete-after ./_site/ $USERNAME@athena.dialup.mit.edu:/afs/athena.mit.edu/activity/m/mitaly/web_scripts/website
