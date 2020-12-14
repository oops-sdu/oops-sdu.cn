## bugs
1. 请使用nodejs 10.22.0版本
1. Error: ENOENT: no such file or directory, stat '...'（详见 [issues 55](https://github.com/GitbookIO/gitbook-cli/issues/55)）

    解决方法（二选一）：
    - 关闭杀毒软件（实测关闭火绒有效）
    - [GitBook运行报错 - no such file or directory](https://blog.csdn.net/prufeng/article/details/83301895)

## install
    npm install gitbook-cli -g
## dev
    gitbook serve  
## build
    gitbook build
## deploy
    ./deploy_to_github_pages.sh