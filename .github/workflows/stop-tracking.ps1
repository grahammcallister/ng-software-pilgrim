param($oldFileName, $newFileName)

# Rename the file back to its original name using the git mv command
git mv $newFileName $oldFileName

# Commit the changes
git commit -m "Stop tracking file rename"

# Create a new file with the desired name
New-Item $newFileName -ItemType File

# Add the new file to Git
git add $newFileName

# Commit the changes
git commit -m "Add new file"