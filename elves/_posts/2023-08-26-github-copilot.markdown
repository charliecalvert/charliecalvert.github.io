---
layout: post
date: 2023-08-26 04:11:46 -0700
title: Github Copilot
categories: tech
---

## My Experiments with AI

I've been experimenting with AI In a casual scattershot manner. My experience suggests that I shouldn't try to use AI to create a new project from scratch. I'm better off bootstrapping my code from my existing notes, scripts, and projects. Then I can use AI to help me add new features to an existing project.

AI doesn't do a good job of sorting out **node.js** projects from **plain javascript** from **C#** or from **Python** projects. Nor can it always tell whether it has chosen code that really works or which is just easily found on the web. I imagine that will improve over time.

I have lots of scripts and starter projects that provide the framework on which to build a complex projectt. With those pieces in place, AI becomes very useful.

It doesn't whether I use Bing Chat, Google Bard, or GitHub Copilot. They are all good at looking at an existing code that works and using that code to help me generate new features. But GitHub CoPilot has the edge because it has the best view of my code. *It really helps me get a lot of work done fast*.

## Copilot

[GitHub][site] Copilot is built on top of the [OpenAI Codex][openai] and provides enhanced autocompletion inside Visual Studio code. You can trigger it either by starting to write code, or writing comments for the code that you want to create. It excels at certain tasks such as helping you write unit tests. Find more information on by visiting pages like this one by [LadyKerr][lady-kerr] entitled [Getting Started with GitHub Copilot Chat in VSCode][lksamples]

GitHub copilot is [free for teachers and students][edu]. If you are not already in the program go to the [GitHub Global Campus][ggcs] site and apply.

Others can go to the [Copilot website][site] on GitHub and sign up for a free trial. After the trial, copilot is $10 a month or $100 a year. To learn the status of your account, sign into GitHub and visit the following pages:

- [https://github.com/settings/copilot][site]
- [https://github.com/settings/billing][bill]

To install GitHub copilot in Visual Studio Code, go to the [Extensions Marketplace][ext] in VS Code (Ctrl-Shift-X) and search on GitHub Copilot.

A good way to get started would be to build a [simple project][simple] that you know how to complete and use the copilot suggestions to expedite the process. For instance, a teacher could take a simple Getting Started project and show how Copilot makes it easy to create.

## GPT-PILOT

[OpenAI][openai] is the company that created the [GPT-3][gpt3] language model. They have a new model called [Codex][codex] that is the basis for GitHub Copilot. You can try it out at [GPT-PILOT][pilot].

[openai]: https://openai.com/

Use Firefox when logging into openai.com.

[openai keys][keys]

[Bill openai][bill-openai]

## References

[site]: https://github.com/features/copilot
[bill]: https://github.com/settings/billing
[lady-kerr]: https://github.com/LadyKerr
[lksamples]: https://github.com/orgs/community/discussions/64517
[edu]: https://docs.github.com/en/billing/managing-billing-for-github-copilot/about-billing-for-github-copilot#pricing-for-github-copilot-for-individuals
[ggcs]: https://docs.github.com/en/education/explore-the-benefits-of-teaching-and-learning-with-github-education/github-global-campus-for-students/apply-to-github-global-campus-as-a-student
[ext]: https://marketplace.visualstudio.com/VSCode
[simple]: https://www.freecodecamp.org/news/javascript-projects-for-beginners/
[keys]: https://platform.openai.com/account/api-keys
[bill-openai]: https://platform.openai.com/account/billing/overview
