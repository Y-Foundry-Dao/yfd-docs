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

1. In Github Desktop 
 - Filter Repositories by `yfd-wiki`

1. Clone `yfd-wiki`

1. Change Branch
    - Create New Branch
    - Give Branch a Name
    - Publish Branch

## Building the Docker Image + Container
1. Open in Visual Studio Code
    - Trust the Authors

1. `Command+Shift+P` (Mac) or `Ctrl+Shift+P` (Linux/Windows)
    - Dev Containers: Open Folder in Container
        - Hit Open
        - `From Dockerfile`

{: .note }
> Development Container Builds
>
> This process can take 5-10 minutes

1. Create a new terminal [ plus sign ]
    - /workspaces/yfd-wiki

## Running the Jekyll Engine 

1. Run `./start_yfd_docs.sh`
