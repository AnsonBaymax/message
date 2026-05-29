#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: ./deploy-gitee.sh <gitee_repo_url> [branch]"
  echo "Example: ./deploy-gitee.sh https://gitee.com/<user>/<repo>.git master"
  exit 1
fi

REMOTE_URL="$1"
BRANCH="${2:-master}"

if [[ ! -f "index.html" ]]; then
  echo "Error: index.html not found in current directory."
  exit 1
fi

if [[ ! -d ".git" ]]; then
  git init
fi

git add .
if git diff --cached --quiet; then
  echo "No changes to commit."
else
  git commit -m "deploy: publish static site"
fi

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi

git push -u origin "$BRANCH"

echo "Done. Now open Gitee repository settings and enable Pages for branch: $BRANCH"
