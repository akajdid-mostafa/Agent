#!/bin/bash
cd "$(dirname "$0")"

# Get current date
CURRENT_DATE=$(date +"%Y-%m-%d")

# List of possible task names
TASK_NAMES=(
    "add page button"
    "add file config"
    "update user interface"
    "fix minor bug"
    "refactor code"
    "improve performance"
    "add new feature"
    "update documentation"
    "optimize database query"
    "implement API endpoint"
)

# Select a random task name
RANDOM_TASK=${TASK_NAMES[$RANDOM % ${#TASK_NAMES[@]}]}

# Generate commit message
COMMIT_MESSAGE="influmatch: ${RANDOM_TASK} (${CURRENT_DATE})"

echo "$COMMIT_MESSAGE" >> log.txt
git add log.txt
git commit -m "$COMMIT_MESSAGE"
git push origin master