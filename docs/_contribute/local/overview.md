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
  <input type="radio" name="tabset" id="tab1" aria-controls="windows">
  <label for="tab1">Windows</label>
  <!-- Tab 2 -->
  <input type="radio" name="tabset" id="tab2" aria-controls="osx">
  <label for="tab2">OS X</label>
  <!-- Tab 3 -->
  <input type="radio" name="tabset" id="tab3" aria-controls="linux">
  <label for="tab3">Linux</label>
  
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

1. Go To [Github Desktop](https://github.com/)

1. Download `Github Desktop`

1. Install Github Desktop

1. Sign-in with Github Credentials

  </section>
  <section id="windows" class="tab-panel">
      <h2>Windows</h2>
      <p><strong>Overall Impression:</strong> An elegant, malty German amber lager with a clean, rich, toasty and bready malt flavor, restrained bitterness, and a dry finish that encourages another drink. The overall malt impression is soft, elegant, and complex, with a rich aftertaste that is never cloying or heavy.</p>
      <p><strong>History:</strong> As the name suggests, brewed as a stronger “March beer” in March and lagered in cold caves over the summer. Modern versions trace back to the lager developed by Spaten in 1841, contemporaneous to the development of Vienna lager. However, the Märzen name is much older than 1841; the early ones were dark brown, and in Austria the name implied a strength band (14 °P) rather than a style. The German amber lager version (in the Viennese style of the time) was first served at Oktoberfest in 1872, a tradition that lasted until 1990 when the golden Festbier was adopted as the standard festival beer.</p>
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