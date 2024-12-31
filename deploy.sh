#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Path to your notes
sourcePath="/home/sid/Notes/blog_posts"
# Path to your Hugo posts
destinationPath="/home/sid/Code/sidblog/content/posts"

echo "[1/5] Copying notes"
rsync -av --delete "$sourcePath" "$destinationPath"

echo "[2/5] Processing images"
python images.py

echo "[3/5] Building site with Hugo"
hugo

echo "[4/5] Uploading to git"
git add .
commit_message="New Blog Post on $(date +'%Y-%m-%d %H:%M:%S')"
git commit -m "$commit_message"
git push

echo "[5/5] Publishing the public folder"
git subtree split --prefix public -b static
git push origin static:static --force
git branch -D static


echo "done"
