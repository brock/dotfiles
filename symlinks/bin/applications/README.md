# bin/applications

You'll rarely use this directory. This is for applications that you can't or don't want to install in `/usr/local/bin` and you didn't write. I found that SourceTree was not behaving when I used `brew` to install it, and I didn't want to `chmod` all of `/usr/local/bin` to my user account (it is root:wheel). So instead, I symlink the `/Applications/.../bin` file into here.

All files in `~/bin/applications` are gitignored by default.