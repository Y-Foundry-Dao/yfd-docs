---
layout: default
title: Setting Up Docs Locally
nav_order: 1
has_children: false
has_toc: false
---

# Setup A Local Documentation Environment

If you would like to help contribute to this documentation.  

Follow the steps below to setup a local working environment.

<!-- 
  

  Also worth reading:
  http://simplyaccessible.com/article/danger-aria-tabs/
-->

<div class="tabset">
  <input type="radio" name="tabset" id="tab1" aria-controls="prereq" checked>
  <label for="tab1">
    <span style="font-size:50%;">
      REQUIRED
    </span>
    <br />
    Pre-Requisites
  </label>
  <input type="radio" name="tabset" id="tab2" aria-controls="ghdesktop">
  <label for="tab2">
    <span style="font-size:50%;">
      REQUIRED
    </span>
    <br />
    Github Desktop
  </label>
  <input type="radio" name="tabset" id="tab3" aria-controls="vscode">
  <label for="tab3">
    VS Code
  </label>
  <input type="radio" name="tabset" id="tab4" aria-controls="alt">
  <label for="tab4">
    Alternative
  </label>
  
  <div class="tab-panels">
    <section id="prereq" class="tab-panel">
      <h2>
        Pre-requisites
      </h2>
<div markdown="1">
### GitHub Account

1. Go to [Github](https://www.github.com/)

1. Create (personal) [GitHub Account](https://docs.github.com/en/get-started/signing-up-for-github/signing-up-for-a-new-github-account)

### Docker Desktop

1. Go to [Docker Website](https://www.docker.com/)

2. Download & Install Docker Desktop

### Visual Studio Code

1. Go To [Visual Studio Code](https://code.visualstudio.com/)

1. `View` Menu

1. Choose `Extensions`

1. Install `Docker` and `Dev Containers` extensions

### Github Desktop

1. Go To [Github Desktop](https://desktop.github.com/)

1. Download `Github Desktop`

1. Install Github Desktop

1. Sign-in with Github Credentials
</div>
  </section>
  <section id="ghdesktop" class="tab-panel">
<div markdown="1">

## Github Desktop

WIP
{: .label .label-blue}

## Downloading the Docs Repo

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
</div>
</section>
  <section id="vscode" class="tab-panel">
    <h2>
      Visual Studio Code
    </h2>
<div markdown="1">

WIP
{: .label .label-blue}

{: .important-title }
> Obsolete
>
> While this documentation serve it's purpose; new documentation is being written to improve the experience.

***

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

## Running the Jekyll Engine 
![run start yfd docs](/assets/images/vscode/start-yfd-docs.png)
1. Type `./start_yfd_docs.sh`
1. Press Enter

## Preview of Running YFD-Docs Instance
![yfd docs working](/assets/images/vscode/yfd-docs-jekyll-running.png)

</div>
  </section>
  <section id="alt" class="tab-panel">
  <h2>
    Alternative Instructions
  </h2>
<div markdown="1">


WIP
{: .label .label-blue}

1. Open Visual Studio Code

1. `File` menu ( `CTRL+O` )
  - `Open Folder...` 

1. Navigate to the `yfd-docs` repo folder and click `open`

1. Open Panel `CTRL+J`

1. Click the down arrow next to `+` on the right side to open a new:
  - Mac: `Terminal`
  - Windows: `Command Prompt`
  - Linux: `Bash`

{: .note }
> the section above needs clarification on the actions

WIP
{: .label .label-blue}

1. Type the following in the Terminal:
  - Linux or Mac: `make build` then `make start`
  - Windows: `build` then `start`

1. Navigate your browser to: `http://localhost:4000` to view yfd-docs
</div>
    </section>
  </div>
<div markdown="1">
{: .highlight }
> Thanks to Bill Raymond for the guide to build a working Docker Jekyll Github Pages Image
>
> `https://github.com/BillRaymond/my-jekyll-docker-website`
</div>