---
layout: post
date: 2023-09-12 01:39:58 -0700
title: Linux Bash Scripting
categories: tech utilities
---

## Learn ${}, $() and "$1"

- Use ${} for parameter expansion. Here's it is used to put a variable into a string.

```bash
$ PATH01='/usr/local/bin'
$ echo "The path is: ${PATH01}"
The path is: /usr/local/bin
```

- Use $() for command substitution. It puts the output of a command into a string.

```bash
echo "The current date is $(date)"
The current date is Tue Sep 12 13:58:08 PDT 2023
```

- Use "$1" to reference the first argument passed to a Bash script or function. Spaces or special characters are preserved by the quotes. Otherwise, Bash would separate the words on the whitespace, creating multiple solutions when you intended to produce just one.
