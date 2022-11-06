---
layout: default
title: YFD Query
parent: YFD Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 1
---

WIP
{: .label .label-blue}

# YFD Contract Queries

Below I will describe the possible Query messages that can be used on this YFD contract in both object and JSON formats. When writing javascript code and sending messages there, the queryMsg method expects an object.

<section id="categories">

__Markdown__ getting converted to __HTML__ inside a ___block-level element___.

A list of categories:

- foo
- bar

</section>

<div class="tabset">
  <!-- Tab 1 -->
  <input type="radio" name="tabset" id="tab1" aria-controls="query" checked>
  <label for="tab1">Query</label>
  <!-- Tab 2 -->
  <input type="radio" name="tabset" id="tab2" aria-controls="execute">
  <label for="tab2">Execute</label>
  
  <div class="tab-panels">
    <section id="query" class="tab-panel">
      <h2><u>All Accounts:</u></h2>
      <p>This query will pull all wallet addresses that hold YFD</p>
      <table style="width:100%">
        <tr>
          <th>Query</th>
          <th>JSON</th>
          <th>JS Object</th>
        </tr>
        <tr>
          <td>All Accounts</td>
          <td><code>{"all_accounts":{}}</code></td>
          <td><code>{all_accounts:{}}</code></td>
        </tr>
      </table>
      <code>
      {
  "accounts": [
    "terra10cf...9t0f"
  ]
}
</code>
  </section>
  <section id="execute" class="tab-panel">
      <h2>Execute Messages</h2>
       
  </section>
  </div>
  
</div>
