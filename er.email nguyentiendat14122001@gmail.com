diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
http.sslbackend=openssl
http.sslcainfo=C:/Program Files/Git/mingw64/etc/ssl/certs/ca-bundle.crt
core.autocrlf=true
core.fscache=true
core.symlinks=false
pull.rebase=false
credential.helper=manager
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=master
user.email=babywhite1412@gmail.com
user.name=ntd1412
safe.directory=D:/flutter
core.repositoryformatversion=0
core.filemode=false
core.bare=false
core.logallrefupdates=true
core.symlinks=false
core.ignorecase=true
branch.master.remote=github
branch.master.merge=refs/heads/master
remote.ntd1412.url=https://github.com/ntd1412/newapp.git
remote.ntd1412.fetch=+refs/heads/*:refs/remotes/ntd1412/*
remote.github.url=https://github.com/ntd1412/newapp.git
remote.github.fetch=+refs/heads/*:refs/remotes/github/*
