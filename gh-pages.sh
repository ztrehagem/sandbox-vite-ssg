BUILD_COMMAND=${BUILD_COMMAND:-npm run build}
DIST_DIR=dist
GH_PAGES_BRANCH=${GH_PAGES_BRANCH:-gh-pages}
REPO_URL=`git remote get-url origin`
REV=`git rev-list --max-count=1 HEAD`

cd ${DIST_DIR}
git init
git add -A
git commit -m "deploy ${REV}"
git push -f ${REPO_URL} `git rev-parse --abbrev-ref HEAD`:${GH_PAGES_BRANCH}
rm -rf .git
cd -
