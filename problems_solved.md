#gitignore
  -问题：突然意识到有些密码之类的东西应该gitignore，但已经提交过了
  -方法：
       1）重命名为 file.example，该删改的删改
       2） .gitignore 写上忽略路径
       3）先把要忽略的剪切到其它地方，git rm config/database.yml，然后再commit&&push，再把这两个文件复制回来
          （因为，据说，.gitignore 只会对没有被 git 记录过的文件生效，也就是 untracked file）