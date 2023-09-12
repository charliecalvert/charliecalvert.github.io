---
layout: post
date: 2023-09-08 04:30:19 -0700
title: Techniques for Working with Jekyll
categories: tech jekyll
---

## Techniques for working with Jekyll

These are notes to help me track how I am using [Jekyll][jekyll].

I've created a series of scripts that begin with a word **SearchChaio** that do useful tasks.  I've also created a script called  **create-post.sh** that will create a new post.

find . -iname "202?-??-??-*" | sort -n -t _

## Results 2023-09-08

// regex to prepend less before path
// ^(.*)$ => less $1

```bash
less ./2022-04-25-set-up-windows-dev-environmement.markdown
less ./2022-12-22-test.markdown
less ./2023-01-06-welcome-to-jekyll.markdown
less ./2023-01-08-two-test.markdown
less ./2023-01-10-day-trip.markdown
less ./2023-04-11-walk.markdown
less ./2023-04-17-create-jekyll-in-cwd.markdown
less ./2023-04-17-docker-jekyll.markdown
less ./2023-04-17-retirement.markdown
less ./2023-04-17-ubuntu-jekyll.markdown
less ./2023-04-18-jekyll-setup.markdown
less ./2023-04-18-nginx-basics.markdown
less ./2023-04-18-setup-repos.markdown
less ./2023-04-19-instructions-for-bad-meditators.markdown
less ./2023-04-19-resize-hyperv-ubuntu-disk.markdown
less ./2023-04-20-network.markdown
less ./2023-04-22-aws-spot-instances.markdown
less ./2023-04-23-AMD-MSI.markdown
less ./2023-04-25-swedish-ot-pt-sp.markdown
less ./2023-04-26-radix.markdown
less ./2023-04-27-john-20-11-mary-at-tomb.markdown
less ./2023-05-13-vscode.markdown
less ./2023-06-09-rsync.markdown
less ./2023-08-06-percent-americans.markdown
less ./2023-08-08-bike-rides.md
less ./2023-08-13-neil-young.md
less ./2023-08-20-covid.md
less ./2023-08-23-worker-shortage.markdown
less ./2023-08-26-docker-vs-vm.markdown
less ./2023-08-26-github-copilot.markdown
less ./2023-08-26-word-markdown-with-images-convert.md
less ./2023-08-27-airnow.markdown
less ./2023-08-30-Cars.markdown
less ./2023-09-08-tech jekyll.markdown
```

## Learning to search

The following is a direct quote from a conversation with Bing on 9/12/2023.

>> To extract the last word of a string in bash, you can use the following command:

```bash
echo "Some variable has value abc.123" | awk '{print $NF}'
```

This command uses `awk` to break the input string into different fields using whitespace as the separator by default. `$NF` is a built-in `awk` variable that gives the total number of fields in the current record. Combining `$` with `NF` outputs the last field in the string, no matter how many fields your string contains ¹.

If you want to extract the last word after a specific string, you can use `awk` with `substr` and `index` functions as follows:

```bash
echo "Some variable has value abc.123" | awk '{print substr($0, index($0, "value") + length("value") + 1)}'
```

This command first finds the index of the word "value" in the input string using `index` function. It then adds the length of "value" and 1 to get the starting position of the last word. Finally, it uses `substr` function to extract the last word from that position till the end of the string .

To sort and remove duplicate rows from the extracted words, you can use `sort` and `uniq` commands as follows:

```bash
echo "Some variable has value abc.123" | awk '{print substr($0, index($0, "value") + length("value") + 1)}' | sort | uniq
```

This command sorts all words extracted from your input string in ascending order and removes any duplicate rows.

I hope this helps!

Source: Conversation with Bing, 9/12/2023
(1) How to extract last part of string in bash? - Stack Overflow. <https://stackoverflow.com/questions/12426659/how-to-extract-last-part-of-string-in-bash>.
(2) Linux sort Command with Examples - phoenixNAP. <https://phoenixnap.com/kb/linux-sort>.
(3) SORT command in Linux/Unix with examples - GeeksforGeeks. <https://www.geeksforgeeks.org/sort-command-linuxunix-examples/>.
(4) How to cut a string after last occurrence of a substring in shell?. <https://stackoverflow.com/questions/52524046/how-to-cut-a-string-after-last-occurrence-of-a-substring-in-shell>.

## Categories

- charlie travel
- consumption
- environment
- exercise
- finance
- health
- howto
- jekyll update
- misc
- music
- setup
- spirit
- spirit christian
- tech
- tech
- tech aws
- tech database
- tech docker
- tech jekyll
- tech setup
- tech utilities
- walks

## Tags & References

[jekyll]: https://jekyllrb.com/ "Jekyll"
