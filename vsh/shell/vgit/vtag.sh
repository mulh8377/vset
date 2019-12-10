CURRENTDATE=`date +"%Y-%m-%d"`
git tag ${CURRENTDATE}
git add -A && git commit -m "updating tag" && git push origin --tag