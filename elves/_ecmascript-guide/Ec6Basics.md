---
layout: page
date: 2023-05-17 10:47:29 -0700
fullPath: /home/ubuntu/Git/CloudNotes/Assignments/EcmaScript/Ec6Basics.md
directoryPath: /home/ubuntu/Git/CloudNotes/Assignments/EcmaScript
fileName: Ec6Basics.md
relativePath: /EcmaScript/Ec6Basics.md
title: Ec6Basics
directoryName: EcmaScript
category : ecmascript-guide
---

## Overview

Basic calls added in EC6 or later.

## let and const

Block scoping

## Template Literals

## Destructuring

## Multiline Strings

## The spread Operator

## Arrow Functions

## Promises

## Enhanced Object Literals

- [PromiseFile](./PromiseFile)

## Eslint rules

Let's look at the official example from the node team on how to use [opendir](https://nodejs.org/api/fs.html#fspromisesopendirpath-options):

```javascript
import { opendir } from 'node:fs/promises';

try {
  const dir = await opendir('./');
  for await (const dirent of dir)
    console.log(dirent.name);
} catch (err) {
  console.error(err);
}
```

As you can see, they recommend using the **for-of** syntax along with **console.error**. Assuming that we can take their recommendation as worthy of consideration, then we might want to turn these rules off.

To turn them off for an entire file:

```javascript
/* eslint-disable no-console */
/* eslint-disable no-restricted-syntax */
```

To turn them` off in the eslint configuration file that affects all of your source code:

```javascript
rules: {
   'no-console': ['off'],
   'no-restricted-syntax': ['off', 'ForOfStatement'],
},
```

There are several variations we can use to write these rules, but this should be enough to get started.
