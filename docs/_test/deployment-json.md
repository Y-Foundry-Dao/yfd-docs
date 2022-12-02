---
layout: default
title: JSON
parent: Deployments
nav_order: 100
has_children: true
has_toc: false
---

WIP
{: .label .label-blue}

# 🧪 Deploying Y-Foundry (from Linux/OSX)

## Clone `yfd-integration` repo

Clone the Integration Repo from Y-Foundry's Github

`https://github.com/Y-Foundry-Dao/yfd-integration.git`

Build the contracts using `./checkout-external.sh`


## Upload Contracts

### CW-20 Token
`yfd-integration\external\yfd-token\artifacts\cw20_base.wasm`
reference: `https://github.com/CosmWasm/cw-plus/blob/main/packages/cw20/README.md`



## cw20_base
```
{
  "name": "Y-Foundry DAO",
  "symbol": "YFD",
  "decimals": 6,
  "initial_balances": [
    {
      "address": "[distribution address]",
      "amount": "2000000000000000"
    }
  ],
  "minter_response": {
    "minter": "[minter address]"
  },
  "marketing": {
    "logo": {
      "url": "https://raw.githubusercontent.com/Y-Foundry-Dao/brand-assets/9e560575c608aa87618be61da4ccbda299c88dcf/brand/icons/svg/logo_orange.svg"
    },
    "project": "Y-Foundry DAO",
    "marketing": "[marketing address]",
    "description": "Propose. Vote. Build."
  }
}
```
Label: `Y-Foundry DAO`


## forge
