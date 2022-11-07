---
layout: default
title: Proposal Messages
parent: Contract Messages
has_children: true
has_toc: true
nav_order: 3
---

# Proposal Contract Messages

This section describes our proposal contract. The Proposal contracts are instantiated from the forge contract as proposals are created. This means there are many proposal contracts at any given time. Below I'll use a proposal contract as an example but it is only one of many proposal contracts that will be instantiated throughout the lifetime of YFD

## Contract Address

| Name         | Contract Address                                                  |
|:-------------|:------------------------------------------------------------------|
| Proposal      | terra1xl2jwtqc0whwulhsew5728fcl0v5d0yq0r7clhalp2aaap6dmjqs3jf7k8  |

You can go to the [contract tab](https://station.terra.money/contract) on the terra station web app to manually run query and execute messages.

Searching for the contract shows useful information such as the `Code ID` `Creator` `Admin` and the `InitMsg` that was used to instantiate the contract. In the case of this YFD contract the `InitMsg` is 

```json
{
  "name": "YFD Governance Proposal AAAB",
  "symbol": "YFD_GOVAAAB",
  "decimals": 6,
  "initial_balances": [
    {
      "address": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
      "amount": "24999852549"
    }
  ],
  "expiration": 100800,
  "quorum_percent": "0.3",
  "vote_type": {
    "emergency": {}
  },
  "majority_percent": "0.501"
}
```
