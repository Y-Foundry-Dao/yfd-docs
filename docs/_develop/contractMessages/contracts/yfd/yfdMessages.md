---
layout: default
title: YFD Messages
parent: Contract Messages
has_children: true
has_toc: true
nav_order: 1
---

WIP
{: .label .label-blue}

# **YFD Contract Messages**

This section describes our YFD smart contract. Based off the CW20 token standard as described [here](https://github.com/CosmWasm/cw-plus/blob/main/packages/cw20/README.md)

## Contract Address

| Name         | Contract Address                                                  |
|:-------------|:------------------------------------------------------------------|
| $YFD CW20    | terra1ss9zz4873vk4dd8dvua0vm83m6s8k7ctwp9efac0arytn6jthfgsy2d4a9  |

You can go to the [contract tab](https://station.terra.money/contract) on the terra station web app to manually run query and execute messages.

![YFD Contract](/assets/images/develop/dapp/contracts/yfdSearch.png)

Searching for the contract shows useful information such as the `Code ID` `Creator` `Admin` and the `InitMsg` that was used to instantiate the contract. In the case of this YFD contract the `InitMsg` is 

```json
{
  "decimals": 6,
  "initial_balances": [
    {
      "address": "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706",
      "amount": "10000000000000"
    }
  ],
  "marketing": {
    "logo": {
      "url": "https://yfoundry.io/logo-512-orange-transparent-square.png"
    }
  },
  "minter_response": {
    "minter": "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706"
  },
  "name": "Y-Foundry DAO",
  "symbol": "YFD"
}
```
