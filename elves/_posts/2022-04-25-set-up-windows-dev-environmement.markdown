---
layout: post
title:  "Set Up Windows DEV Environment"
date:   2023-04-25 07:00:00 -0800
categories: tech setup
---

## Install WSL

Ideally,you want one copy of Windows 11 Pro to be the host. Have at least one copy of Windows 10 or 11 Home or Pro in which to set up your work environment. You don't need pro to set up your environment. Pro is only necessaryto allow you to have full control over Hyper-V virtual machines.

Tasks:

- On Windows 10 Select **Task View | New Desktop** from **Task Bar**
  - Task View is the little icon next to the search area.
- [Turn on Microphone](https://learn.microsoft.com/en-us/windows-server/virtualization/hyper-v/learn-more/Use-local-resources-on-Hyper-V-virtual-machine-with-VMConnect)
    - Close connection to VM by clicking the X at the top of the VM window
    - Start it again by selecting **Connect** from the **Hyper-v Manager** 
    - At the prompt to set up enhanced mode I chose the **Localization** tab to get the Options that I wanted.  
- Log into Stack Overflow 
- [ccalvert](https://www.ccalvert.net/)

## Install Windows Terminal

- [Install Page from Learn Microsoft](https://learn.microsoft.com/en-us/windows/terminal/install)

## Install Git

- [GitHub Git Guide](https://github.com/git-guides/install-git)
- [Git for Windows (Preferred)](https://gitforwindows.org/)
- [GitHub Desktop](https://desktop.github.com/)
- [Windows Install](https://git-scm.com/download/win)

## Install VS Code

- [Install Page](https://code.visualstudio.com/download)

## Install PowerShell 7

- [With Winget](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2#winget)
- [Install Page (7.3)](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell)
- [Windows Specific](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows)
- [Overview](https://learn.microsoft.com/en-us/powershell/?view=powershell-7.2)
- [The Preview](https://briantjackett.com/2019/06/24/windows-terminal-with-powershell-v7-preview/)

``` json
{
    "commandline": "C:\\Program Files\\PowerShell\\7\\pwsh.exe",
    "guid": "{some-guid-1111-2222-3333-444455556}",
    "hidden": false,
    "name": "PowerShell v7"
},
```

## Power & Screen Control

See the **control panel** | **power options**.

Choose **Control X** and then **power options**.

Set screen timeout to 60 minutes. One is for plugged in and the other is for use with the battery.

``` powershell
powercfg -change -monitor-timeout-ac 60
powercfg -change -monitor-timeout-dc 60
```

## Bonus

```
PS C:\Users\charl> history

  Id CommandLine
  -- -----------
   1 winget search Microsoft.PowerShell
   2 winget install --id Microsoft.Powershell --source winget
   3 $PsHome
   4 Get-Process powershell
```