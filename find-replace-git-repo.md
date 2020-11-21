## find & replace content in your repo (including git history)

e.g. I want to remove a a password, name or path from my git repository, including all references to it in the git history.

_**CAUTION CAUTION**_ read the DISCUSSION [here](https://htmlpreview.github.io/?https://github.com/newren/git-filter-repo/blob/docs/html/git-filter-repo.html) _**before**_ rewriting a git history. 

Approach using [{git-filter-repo}](https://github.com/newren/git-filter-repo):

 * {git-filter-repo} requires git >= 2.22.0 & python3 >= 3.5  
 * install dependencies & [{git-filter-repo}](https://github.com/newren/git-filter-repo/blob/main/INSTALL.md) 
 * provide the find-replace strings in a manually created `.txt` file inside the repo (but do not include the `.txt` file in the git history)  
     * e.g. a text file with the line `literal:/some committed text you want removed/==>/replace with this text/` will find all strings of `some committed text you want removed` and replace with `replace with this text`
     * Full instructions are [here](https://htmlpreview.github.io/?https://github.com/newren/git-filter-repo/blob/docs/html/git-filter-repo.html)  
 * run `git filter-repo --replace-text expressions.txt`  
 * re-add remote with `git remote add origin <address>`  
 * force push with `git push origin main --force`  
 * fix resulting greyed-out git buttons in RStudio if using RStudio `git push -u origin main`  

---
[Why {git-filter-repo}](https://github.com/newren/git-filter-repo/blob/main/README.md#why-filter-repo-instead-of-other-alternatives)?  
Approach using [`git filter-branch`](https://stackoverflow.com/questions/7194939/git-change-one-line-in-file-for-the-complete-history/7198036#7198036)  


 