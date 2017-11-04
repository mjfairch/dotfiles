# Bash colors

## The LSCOLORS environment variable
When you type `ls`, the colorized output is determined by the value of the `LSCOLORS` environment variable.  Here is an example:

```shell
$ export LSCOLORS=ExGxcxdxCxegedabagacad
```

There are eleven positions to the right of the equal sign, each occupying two characters.  For example, the first position has the value `Ex`, which means directories should be colored with a bold blue foreground and the default background color.  The eleven positions are:

1. directory
2. symbolic link
3. socket
4. pipe
5. executable
6. block special
7. character special
8. executable with setuid
9. executable with setgid
10. directory writable to others with sticky
11. directory writable to others without sticky

The first character in a position signifies the foreground color, and the second character the background color, where the values of these characters come from the following list (capital letters signify bold weight):

* `a` is black
* `b` is red
* `c` is green
* `d` is brown
* `e` is blue
* `f` is magenta
* `g` is cyan
* `h` is light grey
* `x` is default
