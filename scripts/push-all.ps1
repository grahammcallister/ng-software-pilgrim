param($commit)
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
}

# Function to check error codes and last exit code, and exit if there is an error
Function CheckForErrors() {
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Exiting due to exit code ${LASTEXITCODE}"
        exit 1
    }
}

# Function to check the status of the current branch, and see if it is clean
Function CheckStatus(){
    $status = git status
    Write-Host "Status: ${status}."
    if ($status -notlike "*working tree clean*") {
        Write-Host "Exiting due to clean working tree"
        exit 1
    }
}

Write-Host "Cherry pick commit ${commit} to all branches...?"
[void][System.Console]::ReadKey($true)
Write-Host

$branches = @(
    "software-pilgrim"
    "the-software-pilgrim"
    "software-pilgrim-com"
    "the-software-pilgrim-com"
    "software-pilgrim-coza"
    "the-software-pilgrim-coza"
    "grahammcallister-coza"
)

# For each branch in branches, checkout the branch, cherry pick the commit, and push
foreach ($branch in $branches) {
    Write-Host "Checking out branch ${branch}..."
    Checkout $branch
    CheckForErrors

    CheckStatus

    Write-Host "Cherry picking commit ${commit}..."
    CherryPick $commit
    CheckForErrors

    Write-Host "Pushing branch ${branch}..."
    git push
    CheckForErrors
}

git checkout master
