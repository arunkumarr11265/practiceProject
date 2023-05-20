git add .
# ask for commit message
echo "Enter commit message:"
read commitMessage
git commit -m "* $commitMessage."
#shell script to add, commit and push to github
# usage: sh push.sh
git pull --rebase origin main
if [ $? -eq 0 ]; then
    echo "Pull successful"
    #shell script to add, commit and push to github
    echo "Please remember to pull before pushing"
    # get the current branch
    currentBranch=$(git branch | grep \* | cut -d ' ' -f2)
    echo "Current branch is $currentBranch"
    # push to github
    git push origin $currentBranch
    echo "Push SucessFul You Lazy Ass."
else
    echo "Pull failed"
fi