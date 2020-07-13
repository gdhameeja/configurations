## NOTES
This is the command to be added to .bashrc/.profile to make ag results output in a pager like less
alias ag='ag --pager "less -R"'

git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10
Command to check the most affected files in a git repo

## VIM tips
- Ctrl-o goes back from tag (when you jump to definition)
- Ctrl-w-o maximizes the window from the split

