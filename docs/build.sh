#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mRebuilding website...\033[0m\n"

# Build the project.
hugo -t terminal

# Go To Public folder
cd ../public

# Make the RFC output directory
mkdir -p rfc/html rfc/txt rfc/reference

# Copy the RFC's
cp ../draft-yates-threat-exposure-notification-protocol-*.txt rfc/txt/
cp ../draft-yates-threat-exposure-notification-protocol-*.html rfc/html/
cp ../reference.draft-yates-threat-exposure-notification-protocol-*.xml rfc/reference/

# Add changes to git.
git add .

# Commit changes.
msg="chore(site): rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi

git commit -m "$msg [skip ci]"

# Push source and build repos.
git push origin master
