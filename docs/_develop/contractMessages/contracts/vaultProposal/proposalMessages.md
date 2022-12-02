---
layout: default
title: Vault Proposal Messages
parent: Contract Messages
has_children: true
has_toc: true
nav_order: 3
---

# Proposal Contract Messages

This section describes our vault proposal contract. The Vault Proposal contracts are instantiated from the forge contract as proposals are created. This means there are many vault proposal contracts at any given time. Below I'll use a proposal contract as an example but it is only one of many proposal contracts that will be instantiated throughout the lifetime of YFD

## Contract Address

| Name         | Contract Address                                                  |
|:-------------|:------------------------------------------------------------------|
| Proposal      | terra1ly39tx476q7y3cj9rc33f8agm48ccg7qc02psmm27a4xjw87ut8q0nlwz4  |

You can go to the [contract tab](https://station.terra.money/contract) on the terra station web app to manually run query and execute messages.

Searching for the contract shows useful information such as the `Code ID` `Creator` `Admin` and the `InitMsg` that was used to instantiate the contract. In the case of this YFD contract the `InitMsg` is 

```json
{
  "name": "Foo_name",
  "symbol": "YFDvoteAAAB",
  "decimals": 6,
  "initial_balances": [
    {
      "address": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
      "amount": "24999569540"
    }
  ],
  "booster_addresses": [
    "terra10tl78km5x65cv3jff45ep5333xq79fwdzh4dgz",
    "terra13nxtkm3y6elyuapq5ceysz7smlqzdgljxr9lm9",
    "terra177halsax009np6s7y0mwq23y5jrl8ww0z8h5n5",
    "terra1fq2axrgy7r2hqtxt7x79fm329nd005f2ehddyc",
    "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
    "terra1q04xu3lcgmzt5ayrx8dxkc6kyu9mpmn35szkgw",
    "terra1qje0jdhrhgcnju2ph8jdafcjr252wa2svqj3ly",
    "terra1r5h6fmlgc8h7ke2hlzlkgh3kvcdlxcy55s83rc",
    "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706",
    "terra1ymc59uuuklnudfnkwhezzlnmec6f3cze7tsve9",
    "terra1z34jtm74a4ngea3rpxusmt4sqq8rlgcuwnt24w"
  ],
  "marketing": null,
  "proposal_info": {
    "name": "Foo_name",
    "proposer": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
    "proposal_url": "www.example.com",
    "tvl_limit": "1000000",
    "contact": [
      "nobody@www.example.com"
    ],
    "developer": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
    "development_cost": "67000",
    "developer_initial_payment": "0",
    "initial_funds": "5000",
    "booster_nft": 67,
    "treasury_nft": 33,
    "funding_denomination": "terra1ss9zz4873vk4dd8dvua0vm83m6s8k7ctwp9efac0arytn6jthfgsy2d4a9",
    "statement_of_work": "www.example.com",
    "payment_schedule": 2,
    "payment_frequency": 10,
    "github": "www.example.com",
    "expiration": 201600,
    "quorum_percent": "0.25",
    "self_vouched_information": "www.example.com"
  },
  "proposal_id": "1",
  "vote_contract_code_id": 5040,
  "nft_contract_code_id": 5041,
  "treasury_addr": "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706"
}
```
