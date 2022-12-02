---
layout: default
title: Deploy Step-by-Step
parent: Pisco-1
nav_order: 100
has_children: false
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


```json
{
  "name": "Y-Foundry DAO",
  "symbol": "YFD",
  "decimals": 6,
  "initial_balances": [
    {
      "address": "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706",
      "amount": "1596000000000000"
    },
    {
        "address": "terra1z34jtm74a4ngea3rpxusmt4sqq8rlgcuwnt24w",
        "amount": "50000000000000"
    },
    {
        "address": "terra1qje0jdhrhgcnju2ph8jdafcjr252wa2svqj3ly",
        "amount": "50000000000000"
    },
    {
        "address": "terra1r5h6fmlgc8h7ke2hlzlkgh3kvcdlxcy55s83rc",
        "amount": "100000000000000"
    },
    {
        "address": "terra1fq2axrgy7r2hqtxt7x79fm329nd005f2ehddyc",
        "amount": "100000000000000"
    },
    {
        "address": "terra1q04xu3lcgmzt5ayrx8dxkc6kyu9mpmn35szkgw",
        "amount": "1000000000000"
    },
    {
        "address": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
        "amount": "100000000000000"
    },
    {
        "address": "terra177halsax009np6s7y0mwq23y5jrl8ww0z8h5n5",
        "amount": "1000000000000"
    },
    {
        "address": "terra13nxtkm3y6elyuapq5ceysz7smlqzdgljxr9lm9",
        "amount": "1000000000000"
    },
    {
        "address": "terra10tl78km5x65cv3jff45ep5333xq79fwdzh4dgz",
        "amount": "1000000000000"
    }
  ],
  "minter_response": {
    "minter": "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706"
  },
  "marketing": {
    "logo": {
      "url": "https://raw.githubusercontent.com/Y-Foundry-Dao/brand-assets/9e560575c608aa87618be61da4ccbda299c88dcf/brand/icons/svg/logo_orange.svg"
    },
    "project": "Y-Foundry DAO",
    "marketing": "terra1fq2axrgy7r2hqtxt7x79fm329nd005f2ehddyc",
    "description": "Propose. Vote. Build."
  }
}
```

## Forge Contract Instantiation

```json
{
  "max_lock_duration": "10512000",
  "max_lock_duration_multiplier": "2.5",
  "cw_20_yfd_addr": "terra1293l9rgqk5vxndaeqmengssg3pdch57qpepgslh7p2sg3lqd87rss8du4s",
  "proposal_contract_code_id": 5928,
  "vote_contract_id": 5929,
  "nft_contract_code_id": 5930,
  "vault_liquidate_contract_code_id":  5932,
  "treasury_addr": "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706",
  "address_whitelist": [ 
    {
      "address": "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706",
      "name": "Ray",
      "image_link": "https://tinyurl.com/rayray111",
      "roles": [ "developer", "proposer", "booster", "strategist", "payee" ],
      "links": ["https://github.com/RayRaspberry", "https://twitter.com/rayraspberry1", "https://keybase.io/rayraspberry" ] 
    },
    {
      "address": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
      "name": "Trenten",
      "image_link": "https://avatars.githubusercontent.com/u/15914068?v=4",
      "roles": [ "developer", "proposer", "booster", "strategist", "payee" ],
      "links": ["https://github.com/Tgrede"] 
    },
    {
      "address": "terra1ymc59uuuklnudfnkwhezzlnmec6f3cze7tsve9",
      "name": "Ilo",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": [] 
    },
    {
      "address": "terra1z34jtm74a4ngea3rpxusmt4sqq8rlgcuwnt24w",
      "name": "Marco_Luna",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": [] 
    },
    {
      "address": "terra1qje0jdhrhgcnju2ph8jdafcjr252wa2svqj3ly",
      "name": "SomethingElse",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": [] 
    },
    {
      "address": "terra1r5h6fmlgc8h7ke2hlzlkgh3kvcdlxcy55s83rc",
      "name": "Cle4ncuts",
      "image_link": "",
      "roles": [ "payee", "proposer", "booster", "strategist", "payee"],
      "links": [] 
    },
    {
      "address": "terra1fq2axrgy7r2hqtxt7x79fm329nd005f2ehddyc",
      "name": "Crashtestdumb",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist", "payee"],
      "links": [] 
    },
    {
      "address": "terra1q04xu3lcgmzt5ayrx8dxkc6kyu9mpmn35szkgw",
      "name": "Jun",
      "image_link": "",
      "roles": [ "developer", "proposer", "booster", "strategist"],
      "links": [] 
    },
    {
      "address": "terra177halsax009np6s7y0mwq23y5jrl8ww0z8h5n5",
      "name": "CoolBananaMoon",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": [] 
    },
    {
      "address": "terra13nxtkm3y6elyuapq5ceysz7smlqzdgljxr9lm9",
      "name": "Jaarus",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": [] 
    },
    {
      "address": "terra10tl78km5x65cv3jff45ep5333xq79fwdzh4dgz",
      "name": "KarenKaede",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": [] 
    }
  ]
}
```