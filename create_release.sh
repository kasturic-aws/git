#!/bin/bash

# Navigate to your Git repository
cd GIT

# Calculate the current date and check if it's the 25th
if [ $(date '+%d') -eq 25 ]; then
    # Create a release tag with the current month and year
    tag=$(date '+%Y-%m-%d')
    git tag -a 25.1-new -m "Release for $(date '+%B %Y')"
    git push origin 25.1-new
    echo "Release tag $tag created."
else
    echo "Today is not the 25th, no release tag created."
fi

