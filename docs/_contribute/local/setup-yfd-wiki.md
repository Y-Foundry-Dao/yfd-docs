---
layout: default
title: Setup YFD Docs
nav_order: 5
has_children: false
parent: Work Locally
last_modified_date: 2022-10-31
---

## Setup the `YFD-Docs` Development Environment

## Downloading the Docs Repo

## Github Desktop
### Cloning the Repository

1. Sign-in to Github Desktop 
    - Connect to the `https://github.com/Y-Foundry-DAO/` repository
    - Filter Repositories by `yfd-wiki`

1. Clone `yfd-wiki`

1. Change Branch
    - Create New Branch
    - Give Branch a Name
    - Publish Branch

1. Click `Open in Visual Studio Code`
    - Choose `Trust the Authors`

### Building the Docker Image + Container

1. `Command+Shift+P` (Mac) or `Ctrl+Shift+P` (Linux/Windows)
    - Dev Containers: Open Folder in Container
        - click the `Open` button in the dialog window
        - Select `From Dockerfile`

1. The Development Container will now build
    - Progress can be observed by clicking the blue `View Logs` text in the lower right corner
    - This process can take 5-10 minutes

### Create a new terminal in the VSC Console

1. Click the Plus Icon to open a new Container Terminal in VSC

![new terminal](/assets/images/vscode/console-terminal.png)

{: .important }
> If it's the first time you're opening yfd-wiki:
> 1. Run `bundle install`
>   - then `bundle upgrade`

## Running the Jekyll Engine 
![run start yfd docs](/assets/images/vscode/start-yfd-docs.png)
1. Type `./start_yfd_docs.sh`
1. Press Enter

## Preview of Running YFD-Docs Instance
![yfd docs working](/assets/images/vscode/yfd-docs-jekyll-running.png)