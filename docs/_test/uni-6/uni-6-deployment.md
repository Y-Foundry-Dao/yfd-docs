---
layout: default
title: Deploy Step-by-Step
parent: Uni-6
nav_order: 100
has_children: false
has_toc: false
last_modified_date: 2023-03-21
---

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
      "address": "juno1gt0d8f453zyar0fyesvat4q86fj2jyesggphcs",
      "amount": "1596000000000000"
    }
  ],
  "minter_response": {
    "minter": "juno1gt0d8f453zyar0fyesvat4q86fj2jyesggphcs"
  },
  "marketing": {
    "logo": {
      "url": "https://raw.githubusercontent.com/Y-Foundry-Dao/brand-assets/9e560575c608aa87618be61da4ccbda299c88dcf/brand/icons/svg/logo_orange.svg"
    },
    "project": "Y-Foundry Juno",
    "marketing": "juno1gt0d8f453zyar0fyesvat4q86fj2jyesggphcs",
    "description": "Propose. Vote. Build."
  }
}
```

## Forge Contract Instantiation

```json
{
  "cw_20_yfd_addr": "juno1fpql6u3l3q5eakz3ansam3kdzmc9ew5ctq75mwdmwf4qh84svevqamlket",
  "proposal_contract_code_id": 996,
  "vote_contract_id": 997,
  "nft_contract_code_id": 998,
  "treasury_addr": "juno1gt0d8f453zyar0fyesvat4q86fj2jyesggphcs",
  "address_whitelist": [
    {
      "address": "juno1gt0d8f453zyar0fyesvat4q86fj2jyesggphcs",
      "name": "Ray",
      "image_link": "https://tinyurl.com/rayray111",
      "roles": [
        "developer",
        "proposer",
        "booster",
        "strategist",
        "payee"
      ],
      "links": {
        "github": "RayRaspberry",
        "keybase": "rayraspberry",
        "telegram": "@rayraspberry",
        "twitter": "@rayraspberry1",
        "url": ""
      }
    },
    {
      "address": "juno1mgwy0jxfsmn8vtyxepntlzk6m7030jejxddaj2",
      "name": "Trenten",
      "image_link": "https://avatars.githubusercontent.com/u/15914068?v=4",
      "roles": [ "developer", "proposer", "booster", "strategist", "payee" ],
      "links": {
        "github": "https://github.com/Tgrede"
      }
    },
    {
      "address": "juno1ymc59uuuklnudfnkwhezzlnmec6f3czewafhue",
      "name": "Ilo",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": {}
    },
    {
      "address": "juno1z34jtm74a4ngea3rpxusmt4sqq8rlgcu79j3sj",
      "name": "Marco_Luna",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": {} 
    },
    {
      "address": "juno1qje0jdhrhgcnju2ph8jdafcjr252wa2sukt26c",
      "name": "SomethingElse",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": {} 
    },
    {
      "address": "juno1r5h6fmlgc8h7ke2hlzlkgh3kvcdlxcy5yx72xy",
      "name": "Cle4ncuts",
      "image_link": "",
      "roles": [ "payee", "proposer", "booster", "strategist", "payee"],
      "links": {} 
    },
    {
      "address": "juno1fq2axrgy7r2hqtxt7x79fm329nd005f2fp5kpy",
      "name": "Crashtestdumb",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist", "payee"],
      "links": {} 
    },
    {
      "address": "juno1q04xu3lcgmzt5ayrx8dxkc6kyu9mpmn3yxmddj",
      "name": "Jun",
      "image_link": "",
      "roles": [ "developer", "proposer", "booster", "strategist"],
      "links": {} 
    },
    {
      "address": "juno177halsax009np6s7y0mwq23y5jrl8ww0j3w0kg",
      "name": "CoolBananaMoon",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": {} 
    },
    {
      "address": "juno13nxtkm3y6elyuapq5ceysz7smlqzdgljk4uy7e",
      "name": "Jaarus",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": {} 
    },
    {
      "address": "juno10tl78km5x65cv3jff45ep5333xq79fwdjpvkd7",
      "name": "KarenKaede",
      "image_link": "",
      "roles": [ "proposer", "booster", "strategist"],
      "links": {}
    }
  ]
}
```