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
cherry-pick $commit
git push

git checkout software-pilgrim
cherry-pick $commit
git push

git checkout software-pilgrim-com
cherry-pick $commit
git push

git checkout the-software-pilgrim-com
cherry-pick $commit
git push

git checkout software-pilgrim-coza
cherry-pick $commit
git push

git checkout the-software-pilgrim-coza
cherry-pick $commit
git push

git checkout grahammcallister-coza
cherry-pick $commit
git push

