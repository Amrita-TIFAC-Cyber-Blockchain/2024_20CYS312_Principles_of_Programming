# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lab 1 - Installation of Haskell Compiler
![](https://img.shields.io/badge/-23rd_Jan-orange)

### Installation of GHCup

Using GHCup, below are the tools that get installed:
- GHC: the Glasgow Haskell Compiler
- cabal-install: the Cabal installation tool for managing Haskell software
- Stack: a cross-platform program for developing Haskell projects
- haskell-language-server (optional): A language server for developers to integrate with their editor/IDE

- **Linux, WSL or MacOS (~/.ghcup/bin) **

```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

- **Windows (C:\ghcup\bin)**

```
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }
```
More Information please [Click Here](https://www.haskell.org/ghcup/install/)
