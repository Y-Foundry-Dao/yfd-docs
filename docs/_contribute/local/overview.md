---
layout: default
title: Work Locally
nav_order: 20
has_children: true
has_toc: false
---

# Setup Local Environment

<!-- 
  
  Radio version of tabs.

  Requirements:
  - not rely on specific IDs for CSS (the CSS shouldn't need to know specific IDs)
  - flexible for any number of unkown tabs [2-6]
  - accessible

  Caveats:
  - since these are checkboxes the tabs not tab-able, need to use arrow keys

  Also worth reading:
  http://simplyaccessible.com/article/danger-aria-tabs/
-->

<div class="tabset">
  <!-- Tab 1 -->
  <input type="radio" name="tabset" id="tab1" aria-controls="prereq" checked>
  <label for="tab1">Pre-Requisites</label>
  <!-- Tab 1 -->
  <input type="radio" name="tabset" id="tab2" aria-controls="windows">
  <label for="tab2">Windows</label>
  <!-- Tab 2 -->
  <input type="radio" name="tabset" id="tab3" aria-controls="osx">
  <label for="tab3">OS X</label>
  <!-- Tab 3 -->
  <input type="radio" name="tabset" id="tab4" aria-controls="linux">
  <label for="tab4">Linux</label>
  
  <div class="tab-panels">
    <section id="prereq" class="tab-panel">
      <h2>Pre-requisites</h2>
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

  </section>
  <section id="windows" class="tab-panel">
      <h2>Windows</h2>
        # Setup the `YFD-Docs` Development Environment

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
  </section>
    <section id="OSX" class="tab-panel">
      <h2>OS X</h2>
      <p><strong>Overall Impression:</strong>  An elegant, malty German amber lager with a balanced, complementary beechwood smoke character. Toasty-rich malt in aroma and flavor, restrained bitterness, low to high smoke flavor, clean fermentation profile, and an attenuated finish are characteristic.</p>
      <p><strong>History:</strong> A historical specialty of the city of Bamberg, in the Franconian region of Bavaria in Germany. Beechwood-smoked malt is used to make a Märzen-style amber lager. The smoke character of the malt varies by maltster; some breweries produce their own smoked malt (rauchmalz).</p>
    </section>
    <section id="linux" class="tab-panel">
      <h2>Linux</h2>
      <p><strong>Overall Impression:</strong> A dark, strong, malty German lager beer that emphasizes the malty-rich and somewhat toasty qualities of continental malts without being sweet in the finish.</p>
      <p><strong>History:</strong> Originated in the Northern German city of Einbeck, which was a brewing center and popular exporter in the days of the Hanseatic League (14th to 17th century). Recreated in Munich starting in the 17th century. The name “bock” is based on a corruption of the name “Einbeck” in the Bavarian dialect, and was thus only used after the beer came to Munich. “Bock” also means “Ram” in German, and is often used in logos and advertisements.</p>
    </section>
  </div>
  
</div>


{: .highlight }
> Thanks to Bill Raymond for the guide to build a working Docker Jekyll Github Pages Image
>
> `https://github.com/BillRaymond/my-jekyll-docker-website`