---
layout: default
title: Forge Messages
parent: Contract Messages
has_children: true
has_toc: true
nav_order: 2
---

# **Forge Contract Messages**

This page describes possible query and execute messages utilizing the Forge smart contract. 

## Contract Address

| Name         | Contract Address                                                  |
|:-------------|:------------------------------------------------------------------|
| Forge        | _see deployment section_  |

From the [contract tab](https://station.terra.money/contract) on the terra station web app to manually run query and execute messages.

Searching for the contract shows useful information such as the `Code ID` `Creator` `Admin` and the `InitMsg` that was used to instantiate the contract. In the case of this Forge contract the `InitMsg` is 

```json
{
  "address_whitelist": [
    {
      "address": "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706",
      "image_link": "https://avatars.githubusercontent.com/u/83611789?v=4",
      "links": [
        "https://github.com/RayRaspberry",
        "https://twitter.com/rayraspberry1"
      ],
      "name": "Ray",
      "roles": [
        "developer",
        "proposer",
        "booster",
        "strategist",
        "payee"
      ]
    },
    {
      "address": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
      "image_link": "https://avatars.githubusercontent.com/u/15914068?v=4",
      "links": [
        "https://github.com/Tgrede"
      ],
      "name": "Trenten",
      "roles": [
        "developer",
        "proposer",
        "booster",
        "strategist",
        "payee"
      ]
    },
    {
      "address": "terra1ymc59uuuklnudfnkwhezzlnmec6f3cze7tsve9",
      "image_link": "",
      "links": [],
      "name": "Ilo",
      "roles": [
        "proposer",
        "booster",
        "strategist"
      ]
    },
    {
      "address": "terra1z34jtm74a4ngea3rpxusmt4sqq8rlgcuwnt24w",
      "image_link": "",
      "links": [],
      "name": "Marco_Luna",
      "roles": [
        "proposer",
        "booster",
        "strategist"
      ]
    },
    {
      "address": "terra1qje0jdhrhgcnju2ph8jdafcjr252wa2svqj3ly",
      "image_link": "",
      "links": [],
      "name": "SomethingElse",
      "roles": [
        "proposer",
        "booster",
        "strategist"
      ]
    },
    {
      "address": "terra1r5h6fmlgc8h7ke2hlzlkgh3kvcdlxcy55s83rc",
      "image_link": "",
      "links": [],
      "name": "Cle4ncuts",
      "roles": [
        "payee",
        "proposer",
        "booster",
        "strategist"
      ]
    },
    {
      "address": "terra1fq2axrgy7r2hqtxt7x79fm329nd005f2ehddyc",
      "image_link": "",
      "links": [],
      "name": "Crashtestdumb",
      "roles": [
        "proposer",
        "booster",
        "strategist"
      ]
    },
    {
      "address": "terra1q04xu3lcgmzt5ayrx8dxkc6kyu9mpmn35szkgw",
      "image_link": "",
      "links": [],
      "name": "Jun",
      "roles": [
        "developer",
        "proposer",
        "booster",
        "strategist"
      ]
    },
    {
      "address": "terra177halsax009np6s7y0mwq23y5jrl8ww0z8h5n5",
      "image_link": "",
      "links": [],
      "name": "CoolBananaMoon",
      "roles": [
        "proposer",
        "booster",
        "strategist"
      ]
    },
    {
      "address": "terra13nxtkm3y6elyuapq5ceysz7smlqzdgljxr9lm9",
      "image_link": "",
      "links": [],
      "name": "Jaarus",
      "roles": [
        "proposer",
        "booster",
        "strategist"
      ]
    },
    {
      "address": "terra10tl78km5x65cv3jff45ep5333xq79fwdzh4dgz",
      "image_link": "",
      "links": [],
      "name": "KarenKaede",
      "roles": [
        "proposer",
        "booster",
        "strategist"
      ]
    }
  ],
  "cw_20_yfd_addr": "terra1ss9zz4873vk4dd8dvua0vm83m6s8k7ctwp9efac0arytn6jthfgsy2d4a9",
  "max_lock_duration": "10512000",
  "max_lock_duration_multiplier": "2.5",
  "nft_contract_code_id": 5041,
  "proposal_contract_code_id": 5039,
  "treasury_addr": "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706",
  "vault_liquidate_contract_code_id": 5043,
  "vote_contract_id": 5040
}
```