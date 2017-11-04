# Bash prompt
The bash prompt's format is encoded in the `PS1` environment variable.  For example, issuing `export PS1="command: "` will change the command-line prompt to display:
```shell
command:
```
Such a prompt is, at best, uninformative.  It's often helpful to know the current working directory, for example, without having to issue the `pwd` command.  To make the current working directory appear in the prompt, issue `export PS1="\w\$ "`.  Here, `\w` is a variable which the shell replaces with the current working directory, and `\$` is a variable which renders as `#` for the root user and as `$` for everybody else.

## Prompt variables
The built-in prompt variables are:
* `\a` = bell
* `\d` = the date in Weekday Month Date format, e.g. Tue May 26
* `\D{format}`  = format as in strftime(3). (braces required)
* `\e` = ASCII escape character
* `\h` = hostname, up to the first dot
* `\H` = fully qualified hostname
* `\j` = number of jobs currently managed by the shell
* `\j` = the number of jobs currently managed by the shell
* `\l` = the basename of the shell's terminal device name
* `\n` = newline
* `\r` = carriage return
* `\s` = the name of the shell, the basename of $0 (the portion following the final slash)
* `\t` = the current time in 24-hour HH:MM:SS format
* `\T` = the current time in 12-hour HH:MM:SS format
* `\@` = the current time in 12-hour am/pm format
* `\A` = the current time in 24-hour HH:MM format
* `\u` = the username of the current user
* `\v` = the version of bash (e.g., 2.00)
* `\V` = the release of bash, version + patch level (e.g., 2.00.0)
* `\w` = the current working directory, abbreviating `$HOME` by a tilde
* `\W` = the basename of the current working directory, abbreviating `$HOME` by a tilde
* `\!` = the history number of this command
* `\#` = the command number of this command
* `\$` = if the effective UID is 0, a #, otherwise a $
* `\\` = a backslash
* `\[` = begin a sequence of non-printing characters, which could be used to embed a terminal control sequence into the prompt
* `\]` = end a sequence of non-printing characters

## Colorized prompts
To colorize the prompt, insert color codes into the `PS1` variable.  Color codes stay in effect until changed, and the special code `\e[0m` resets the foreground and background colors to the terminal's default settings.  A color code, being a nonprintable character, must be escaped within `\[` and `\]`.  For example, to make the working appear in bold yellow in the above example, type:

```shell
$ export PS1="\[\e[1;33m\]\w\[\e[0m\]\$ "
```
Here we switched into bold yellow using `\[\e[1;33m\]`, inserted the working directory with `\w`, switched back to the terminal's default colors with `\[\e[0m\]`, and then inserted the prompt symbol with `\$`.  If you mess up your prompt while experimenting, you can reset to a simple prompt with the default colors by issuing:

```shell
$ export PS1="\[\e[0m\]\$ "
```

### Foreground colors
The format of a foreground color is:
`\e[STYLE;COLORm`, where `STYLE` is one of
* `0` for normal weight and style
* `1` for bold
* `2` for dim
* `3` for italic
* `4` for underline
* `5` for blinking

and `COLOR` is one of

* `30` for black
* `31` for red
* `32` for green
* `33` for yellow
* `34` for blue
* `35` for purple
* `36` for cyan
* `37` for white

### Background colors
The format of a background color is `\e[COLORm` where `COLOR` is one of
* `40` for black
* `41` for red
* `42` for green
* `43` for yellow
* `44` for blue
* `45` for purple
* `46` for cyan
* `47` for white

For example, to have the working directory shown as bold yellow on a blue background, enclosed in default-colored brackets, followed by a default-colored prompt symbol, issue:

```shell
$ export PS1="[\[\e[44m\]\[\e[1;33m\]\w\[\e[0m\]]\$ "
```
