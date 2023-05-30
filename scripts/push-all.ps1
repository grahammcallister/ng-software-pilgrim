param($commit, $branch)
# This script pushes a specific commit to specific branches using cherry-pick
# The script stops if there are any failed exit codes or errors
# Usage:
#   ./push-all.ps1 <commit>

# Checks out a given branch
Function Checkout($branch) {
    git checkout $branch
}

# Function to cherry pick a specific commit
Function CherryPick($commit) {
    git cherry-pick $commit
    CheckForErrors
    git merge --abort
}

# Function to check error codes and last exit code, and exit if there is an error
Function CheckForErrors() {
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Exiting due to exit code ${LASTEXITCODE}"
        exit 1
    }
}

Write-Host "Cherry pick commit ${commit} to all branches...?"
[void][System.Console]::ReadKey($true)
Write-Host

$branches = @(
    "the-software-pilgrim"
)

#
#    "the-software-pilgrim"
#    "software-pilgrim-com"
#    "the-software-pilgrim-com"
#    "software-pilgrim-coza"
#    "the-software-pilgrim-coza"
#    "grahammcallister-coza"
#


#foreach ($branch in $branches) {
    Write-Host "Checking out branch ${branch}..."
    Checkout $branch
    CheckForErrors

    Write-Host "Cherry picking commit ${commit}..."
    CherryPick $commit
    

    Write-Host "Pushing branch ${branch}..."
    git push
    CheckForErrors
#}

git checkout master
