---
layout: default
title: Custom Docker Image
nav_order: 50
has_children: false
parent: Work Locally
last_modified_date: 2022-10-31
---

## Setup Y-Foundry Docs Locally on Windows

1. open Command Prompt as Administrator
- `wsl --install -d Ubuntu`

1. Restart Computer (if needed)

1. run `wsl --update`

1. Then Download and Install Docker Desktop here:
- https://docs.docker.com/desktop/install/windows-install/

1. Start `Terminal` 
    - Win+X
        - Terminal

1. `mkdir proj`

1. `cd proj`

1. `apt update`

1. `apt upgrade`

1. `apt install git`

1. `git clone https://github.com/Y-Foundry-Dao/yfd-docs.git`

1. 


### More Information

Learn more about Docker Containers and VS Code [here](https://code.visualstudio.com/docs/devcontainers/tutorial)
