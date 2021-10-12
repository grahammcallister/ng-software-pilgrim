param($commit)
# This script pushes a specific commit to all using cherry-pick
# Be careful there are no merge conflicts
#
# Usage:
#   ./push-all.ps1 <commit>

Write-Host "Cherry pick commit ${commit} to all branches...?"
[void][System.Console]::ReadKey($true)
Write-Host

git checkout the-software-pilgrim
git cherry-pick $commit
git push

git checkout software-pilgrim
git cherry-pick $commit
git push

git checkout software-pilgrim-com
git cherry-pick $commit
git push

git checkout the-software-pilgrim-com
git cherry-pick $commit
git push

git checkout software-pilgrim-coza
git cherry-pick $commit
git push

git checkout the-software-pilgrim-coza
git cherry-pick $commit
git push

git checkout grahammcallister-coza
git cherry-pick $commit
git push

git checkout master
