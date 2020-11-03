## find & replace content in your repo (including git history)

e.g. I want to remove a a password, name or path from my git repository, including all references to it in the git history.

_**CAUTION CAUTION**_ read the DISCUSSION [here](https://htmlpreview.github.io/?https://github.com/newren/git-filter-repo/blob/docs/html/git-filter-repo.html) _**before**_ rewriting a git history. 

Approach using [{git-filter-repo}](https://github.com/newren/git-filter-repo):  
* {git-filter-repo} requires git >= 2.22.0 & python3 >= 3.5  
* install dependencies & [{git-filter-repo}](https://github.com/newren/git-filter-repo/blob/main/INSTALL.md)  
* provide find-replace in a `.txt` file, e.g. `literal:/who committed this?/==>/replace/`  
* run `git filter-repo --replace-text expressions.txt`  
* re-add remote with `git remote add origin <address>`  
* force push with `git push origin main --force`  
* fix greyed out git buttons in RStudio if using RStudio later with `git push -u origin main`  


[Why {git-filter-repo}](https://github.com/newren/git-filter-repo/blob/main/README.md#why-filter-repo-instead-of-other-alternatives)?  
[Other helpful EXAMPLES](https://htmlpreview.github.io/?https://github.com/newren/git-filter-repo/blob/docs/html/git-filter-repo.html#EXAMPLES) for solving git challenges with {git-filter-repo}.  
