the file is used test file.


error: pathspec 'file'' did not match any file(s) known to git

D:\my_code_soft\my_github\shell (master -> origin)
λ git status
On branch master
Your branch is up to date with 'origin/master'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        linux_basic/

nothing added to commit but untracked files present (use "git add" to track)

D:\my_code_soft\my_github\shell (master -> origin)
λ git add linux_basic\
warning: LF will be replaced by CRLF in linux_basic/linux_basic.sh.
The file will have its original line endings in your working directory

D:\my_code_soft\my_github\shell (master -> origin)
λ git commit -m 'Add new file'
error: pathspec 'new' did not match any file(s) known to git
error: pathspec 'file'' did not match any file(s) known to git

## 以上报错的原因，在于 commit -m 后的提交备注，没有使用双引号，而使用了单引号，单引号，git命令中就认为是文件或其他信息，进而判断有失败
## 不用的语言，语法中单引号或双引号的用法不同，有时会区分，有时不会区分
## 在 git 中备注信息，一定要用双引号，不能用单引号
