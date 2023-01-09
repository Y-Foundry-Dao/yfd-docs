---
layout: default
title: 📄 Style & Syntax
parent: dApp Frontend
has_children: false
has_toc: false
last_modified_date: 2023-01-08
---

# Style Guide & Syntax Conventions

## Prefixes and Suffixes

{: .note}
Prefixes and suffixes are used to identify the type or function of an element. This is to help with debugging and to ensure that the data is being used in the correct context.
`prefix` are lower-case and `suffix` have the first letter capitalized.

| Prefix | Suffix | Purpose | Example | Specific Description |
| :--- | :--- | :--- | :--- |
| `my` |  | Data formatted to be presented in the UI/UX | `myBalance` | Token Balance formated with decimal places and commas |
|  | `Connected` | elements directly dependent on the user's wallet connection | `addressConnected` |
| | `Atom` | Recoil State Elements | `currentContractForgeAtom` | The forge contract address utilized by the dApp |
| `select` | | Recoil Selector Elements | `selectYFD` | YFD Balance queried from CW20 Contract |
