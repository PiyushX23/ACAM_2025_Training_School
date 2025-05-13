#!/bin/bash
# Script to update a specific GitHub repository

# Check if a commit message was provided
if [ -z "$1" ]; then
  echo "Please provide a commit message"
  echo "Usage: ./update-github.sh \"Your commit message\""
  exit 1
fi

# Navigate to the repository directory
cd "/Users/piyushkmrp/Documents/1_work/2_meetings/ACAM 2025/Training School/ACAM_2025_Training_School"

# Check if we're in a git repository
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
  echo "Error: Not in a git repository"
  exit 1
fi

# Add all changes
git add .

# Commit with the provided message
git commit -m "$1"

# Push to the remote repository
git push

echo "Repository updated successfully!"
