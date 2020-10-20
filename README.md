## NOTES

### EMACS tips
- Generate ctags for emacs with following command:
`find . -iname '*.py' -type f -exec ctags -e  -f TAGS {} +`
Remember ctags are better than etags. They give goto-definition for constants as well whereas etags don't seem to do so.

### VIM tips
- Ctrl-o goes back from tag (when you jump to definition)
- Ctrl-w-o maximizes the window from the split
- Set tab width vim: `set shiftwidth=4 softtabstop=4 expandtab`
- This is a good video on autoindent and tab width setting: https://www.youtube.com/watch?v=SfIiGkMLqug&t=175s
- When CtrlP doesn't find all the files try this - `:let g:ctrlp_max_files=0` then run `:CtrlPClearAllCaches`. Also read the following issue for more help: https://github.com/kien/ctrlp.vim/issues/234
- To refresh Ctrl-P cache (so that new files appear and deleted files don't) press F5 while in Ctrl-P window
- Generate a ctags file `find . -iname '*.py' -type f -exec ctags -e  -f TAGS {} +` for ctags for emacs and  `find . -iname '*.py' -type f -exec ctags -f <name of output your tags file> {} +` for tags file for vim
- Append to a ctags file `find . -iname '*.py' -type f -exec ctags -aRe -f <full path to the TAGS file with filename> {} +`
- To replace in visual mode: Select lines where you want to replace. Then `:s/<text to replace>/<new text>/`
- If you have recently installed ctrlp or something, use this command to make ctrlp run: `:helptags ~/.vim/bundle/ctrlp.vim/doc` assuming you have doc in the specified location

### SQL tips
- MySQL check the size of the database: 
```
SELECT table_name AS "Table",
ROUND(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
FROM information_schema.TABLES
WHERE table_schema = "database_name"
ORDER BY (data_length + index_length) DESC;
```

### GIT tips
- When you need to see the history of one line: `git log --pretty=short -u -L 56:<path to the file>` See the following link for more details: https://stackoverflow.com/questions/8435343/retrieve-the-commit-log-for-a-specific-line-in-a-file
- Git blame for specific lines of a file: `git blame -L <starting line number:ending line number (maybe relative to starting line number)> -- <path to file>
- This is obvious but `git log --reverse` shows the git log but in reverse
- git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10 Command to check the most affected files in a git repo
- To increase the speed of the typing cursor (the one that appears when you type) use the following command: xset r rate 250 50
- When you have to change the name/email of a specific commit: https://stackoverflow.com/questions/3042437/how-to-change-the-commit-author-for-one-specific-commit - basically `git rebase -i <commit-before-the-commit-to-edit>` and change `pick` to `edit` for the commit to be edited. Then use `git commit --amend --author="Author name <authoremail>" --no-edit`. Then run `git rebase --continue`. Repeat the last two steps for every commit to be edited.
- Search a string in git commits (using git log) with filename and commit details. `git log -S'search string' --oneline --name-status`. Check this answer https://gist.github.com/lyoshenka/8251914.
- Having a global `.gitignore` to ignore stuff from all repositories on machine: https://sebastiandedeyne.com/setting-up-a-global-gitignore-file/ (this is what you use to exclude tags and .vimrc files from individual repositories)

### Misc tips
There is something called mosh, mobile interactive shell which is supposed to be better than ssh.
I guess it also gives persistent ssh connections to servers even if network dies out and is more
smooth than native ssh.
- This is the command to be added to .bashrc/.profile to make ag results output in a pager like less
alias ag='ag --pager "less -R"'
- Gogh - the color themes thing for bash: https://mayccoll.github.io/Gogh/ you use to use this a lot
- To increase the speed of the keybaord cursor (the one because of which your keybaord cursor moves fast while moving around in vim or any other editor): `xset r rate 300 25` https://www.reddit.com/r/vim/comments/1lvg52/speed_up_your_keyboard_xset_r_rate/ refer this link for more info
