---
layout: default
title: Mac OSX
nav_order: 5
has_children: false
parent: Setup Local Build
last_modified_date: 2022-10-31
---

## Setting up the Development Environment

### Create GitHub Account

1. Go to [Github](https://www.github.com/)

2. Create GitHub Account

### Install Developer Tools on OSX

1. open terminal
2. run `sudo xcode-select --install`

{: .note }
> this process could take 20-30 minutes

### Install Docker

1. Go to [Docker Website](https://www.docker.com/)

2. Download Docker for OSX
    - Intel or Mac depends on your hardware

### Install Visual Studio Code

1. Go To [Visual Studio Code](https://code.visualstudio.com/)

1. `View` Menu

1. Choose `Extensions`

1. Install `Docker` and `Dev Containers` extensions

### Install Github Desktop

1. Go To [Github Desktop](https://github.com/)

1. Download `Github Desktop`

1. Install Github Desktop

1. Sign-in with Github Credentials


## Downloading the Docs Repo

1. In Github Desktop 
 - Filter Repositories by `yfd-wiki`

1. Clone `yfd-wiki`

1. Change Branch
    - Create New Branch
    - Give Branch a Name
    - Publish Branch

1. Open in Visual Studio Code
    - Trust the Authors

1. `Command+Shift+P`
    - Dev Containers: Open Folder in Container
        - Hit Open
        - `From Dockerfile`

{: .note }
> Development Container Builds
>
> This process can take 5-10 minutes

1. Create a new terminal [ plus sign ]
    - /workspaces/yfd-wiki

1. run `bundle add jemoji`

1. Run `./start_yfd_docs.sh`
