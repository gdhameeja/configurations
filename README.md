## NOTES
This is the command to be added to .bashrc/.profile to make ag results output in a pager like less
alias ag='ag --pager "less -R"'

git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10
Command to check the most affected files in a git repo

## VIM tips
- Ctrl-o goes back from tag (when you jump to definition)
- Ctrl-w-o maximizes the window from the split

## SQL tips
- MySQL check the size of the database: 
```
SELECT table_name AS "Table",
ROUND(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
FROM information_schema.TABLES
WHERE table_schema = "database_name"
ORDER BY (data_length + index_length) DESC;
```




## Misc tips
There is something called mosh, mobile interactive shell which is supposed to be better than ssh.
I guess it also gives persistent ssh connections to servers even if network dies out and is more
smooth than native ssh.
