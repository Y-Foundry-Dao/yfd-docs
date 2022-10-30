---
layout: default
title: Release A New Version
parent: Web2 Frontend
nav_order: 3
has_children: false
---

## How to Create a New Version Release of YFoundry.io

{: .note }
> The instructions below will create a new releaes of the web2 `yfoundry-frontend` repo for deployment.

### 🥇 in your local Git

1. Checkout the Github Repository for `yfoundry-frontend`

{: .highlight }
> On Linux, Steps 2 to step 4 can be completed by running `yfd-new-release.sh [version number]`
>
> example: `yfd-new-release.sh 1.6.2`

{:style="counter-reset:none"}
1. `git checkout -b releases/v1.5.0 main`

    Replace **1.5.0** with the next version increment you would like to use

1. `git branch --set-upstream-to=origin/main releases/v1.5.0`

1. `git push`

### 🥈 on GitHub in the `y-foundry-dao/yfoundry-frontend repo`

1. [Draft a new Release](https://github.com/Y-Foundry-Dao/yfoundry-frontend/releases/new)
    - `https://github.com/Y-Foundry-Dao/yfoundry-frontend/releases/new`

2. set tag to `v1.5.0`

3. set target to `releases/v1.5.0`

4. set title to `v1.5.0`

5. set description to changes in this release

6. click `Publish Release`

### 🥉 on [Fleek.co](https://fleek.co)

1. Login with YFD Github Credentials

2. Go to Hosting
    - choose `yfoundry.io`
    - `settings` tab
    - `build&deploy` menu option

3. In the `Deploy Contexts` container
    - click `Edit settings`
    - select `releases/v1.5.0` from the dropdown menu
    - click `Save`

4. Click the `Deploys` tab
    - click `Trigger deploy`

***

That's it.  The latest repo/main code from `forge.yfoundry.io` has been deployed to `https://yfoundry.io`
