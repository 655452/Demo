# Step 1: Create React App
npx create-react-app my-app

# Step 2: Navigate into the project directory
cd my-app

# Step 3: Initialize git and make the initial commit
git init
git add .
git commit -m "Initial commit"

# Step 4: Create a GitHub repository using GitHub CLI
gh repo create my-app --public --source=. --remote=origin

# Step 5: Switch to a new branch "update_logo"
git checkout -b update_logo

# Step 6: Replace the existing logo
wget -O src/logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg

# Step 7: Replace the existing link
sed -i 's#href="https://reactjs.org"#href="https://www.propelleraero.com/dirtmate/"#' src/App.js

# Step 8: Commit and push the changes
git add .
git commit -m "Update logo and link"
git push origin update_logo

# Step 9: Create a PR using GitHub CLI
gh pr create --base master --head update_logo --title "Update logo and link" --body "Replaced the existing logo and updated the link in App.js"

# Step 10: Merge the PR using GitHub CLI
gh pr merge update_logo --merge
