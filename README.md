## NOTES
This is the command to be added to .bashrc/.profile to make ag results output in a pager like less
alias ag='ag --pager "less -R"'

git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10
Command to check the most affected files in a git repo

## EMACS tips
- Generate ctags for emacs with following command:
`find . -iname '*.py' -type f -exec ctags -e  -f TAGS {} +`
Remember ctags are better than etags. They give goto-definition for constants as well whereas etags don't seem to do so.

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

- Generate a ctags file `find . -iname '*.py' -type f -exec ctags -e  -f TAGS {} +` for ctags for emacs and  `find . -iname '*.py' -type f -exec ctags -f <name of output your tags file> {} +` for tags file for vim
- Append to a ctags file `find . -iname '*.py' -type f -exec ctags -aRe -f .<full path to the TAGS file with filename> {} +`
