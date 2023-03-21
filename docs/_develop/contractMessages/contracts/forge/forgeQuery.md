---
layout: default
title: Forge Query
parent: Forge Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 1
---

# Forge Contract Queries

<details markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Token Info:

{% capture description %}
Gets the information about the token stored on the blockchain
{% endcapture %}
{% capture key %}
token_info
{% endcapture %}
{% capture object %}
{token_info: {}}
{% endcapture %}
{% capture json %}
{"token_info": {}}
{% endcapture %}
{% capture result %}
{
  "name": "Y-Foundry-Forge",
  "symbol": "fYFD",
  "decimals": 6,
  "total_supply": "26788035103"
} 
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Download Logo:

{% capture description %}
Downloads the on-chain logo for the fYFD token if there is one
{% endcapture %}
{% capture key %}
download_logo
{% endcapture %}
{% capture object %}
{download_logo:{}}
{% endcapture %}
{% capture json %}
{"download_logo":{}}
{% endcapture %}
{% capture result %}
logo not found: query wasm contract failed: invalid request
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Marketing Info:

{% capture description %}
Gets the on-chain marketing information for the fYFD token
{% endcapture %}
{% capture key %}
marketing_info
{% endcapture %}
{% capture object %}
{marketing_info:{}}
{% endcapture %}
{% capture json %}
{"marketing_info":{}}
{% endcapture %}
{% capture result %}
{
  "project": null,
  "description": null,
  "logo": null,
  "marketing": null
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Accounts:

{% capture description %}
Gets all wallet addressess that hold fYFD
{% endcapture %}
{% capture key %}
all_accounts
{% endcapture %}
{% capture object %}
{all_accounts:{}}
{% endcapture %}
{% capture json %}
{"all_accounts":{}}
{% endcapture %}
{% capture result %}
{"accounts":["address", "address", "address", ...]}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Balance:

{% capture description %}
Gets the fYFD balance of the given wallet address. Balance is returned in microunits
{% endcapture %}
{% capture key %}
balance
{% endcapture %}
{% capture object %}
{balance: { address: [account_address]}}
{% endcapture %}
{% capture json %}
{"balance": { "address": "[account_address]"}}
{% endcapture %}
{% capture result %}
{"balance": "78999989667"}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Balance Detail:

{% capture description %}
Gets the fYFD balance details of the given wallet address. This gives more information than the balance query
{% endcapture %}
{% capture key %}
balance_detail
{% endcapture %}
{% capture object %}
{balance_detail: { address: [account_address]}}
{% endcapture %}
{% capture json %}
{"balance_detail": { "address": "[account_address]"}}
{% endcapture %}
{% capture result %}
{
  "balance": "26787919520",
  "stakes": [
    {
      "idx": "1",
      "stake": {
        "depositor": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
        "asset_deposit_amount": "10000000000",
        "asset_withdrawn_amount": "0",
        "deposit_timestamp": "1667357614729457660",
        "deposit_height": 2519009,
        "lock_duration": 10512000
      }
    },
    {
      "idx": "2",
      "stake": {
        "depositor": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
        "asset_deposit_amount": "800000000",
        "asset_withdrawn_amount": "0",
        "deposit_timestamp": "1667372302575186535",
        "deposit_height": 2521682,
        "lock_duration": 10512000
      }
    }
  ]
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Proposals:

{% capture description %}
Gets a list of all governance proposals on the forge contract
{% endcapture %}
{% capture key %}
all_proposals
{% endcapture %}
{% capture object %}
{all_proposals:{}}
{% endcapture %}
{% capture json %}
{"all_proposals":{}}
{% endcapture %}
{% capture result %}
{
  "proposals": [
    {
      "addr": "terra1xl2jwtqc0whwulhsew5728fcl0v5d0yq0r7clhalp2aaap6dmjqs3jf7k8",
      "index": "1"
    },
    {
      "addr": "terra180d496dk3krrqx66mp047uue2sexwmc6356v4e0rtl2fj6rc67cq867u4f",
      "index": "2"
    }
  ]
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Proposal:

{% capture description %}
Gets details about a proposal in the list
{% endcapture %}
{% capture key %}
proposal
{% endcapture %}
{% capture object %}
{proposal:{idx:"1"}}
{% endcapture %}
{% capture json %}
{"proposal":{"idx":"1"}}
{% endcapture %}
{% capture result %}
{
  "name": "YFD Governance Proposal AAAB",
  "closing_block": 2619871,
  "quorum_block": 2519140,
  "state": {
    "Affirm": {}
  },
  "addr": "terra1xl2jwtqc0whwulhsew5728fcl0v5d0yq0r7clhalp2aaap6dmjqs3jf7k8",
  "detail": {
    "token_whitelist": {
      "token": "terra1ss9zz4873vk4dd8dvua0vm83m6s8k7ctwp9efac0arytn6jthfgsy2d4a9",
      "change": {
        "new": {
          "name": "YFD",
          "asset_type": "cw20",
          "stable": false,
          "oracle_address": ""
        }
      }
    }
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Vault Proposals:

{% capture description %}
Gets a list of all vault proposals on the forge contract
{% endcapture %}
{% capture key %}
all_vault_proposals
{% endcapture %}
{% capture object %}
{all_vault_proposals:{}}
{% endcapture %}
{% capture json %}
{"all_vault_proposals":{}}
{% endcapture %}
{% capture result %}
{
  "proposals": [
    {
      "addr": "terra1ly39tx476q7y3cj9rc33f8agm48ccg7qc02psmm27a4xjw87ut8q0nlwz4",
      "index": "1"
    },
    {
      "addr": "terra1zxrsflnvq0w30nj8y5wsezzd298wa4hh5twyv0pnap9gwlnjk6gs6rcj0n",
      "index": "2"
    },
    {
      "addr": "terra1pasj32uxqm9l07qm77jxz850p97u02ksgxlqfht054arqcyts6us2nyv6z",
      "index": "3"
    },
    {
      "addr": "terra1y40ggukfvxn6dq88re3v726augy34dlvz2v5c503dhjxpfdnwwast6qfpx",
      "index": "4"
    },
    {
      "addr": "terra19pm0z0dxyvzelg92ms89k9zsjx0ddpsacxmfhjd7tx4qkr3ms9rqhvdp08",
      "index": "5"
    },
    {
      "addr": "terra10cfdellar38usjmum739ngzwd6q9rcf8t5klaz2ax04ak546xs7qpp9t0f",
      "index": "6"
    }
  ]
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Vault Proposal:

{% capture description %}
Gets details about a vault proposal in the list
{% endcapture %}
{% capture key %}
vault_proposal
{% endcapture %}
{% capture object %}
{vault_proposal:{idx:"1"}}
{% endcapture %}
{% capture json %}
{"vault_proposal":{"idx":"1"}}
{% endcapture %}
{% capture result %}
{
  "name": "Foo_name",
  "closing_block": 2720790,
  "quorum_block": null,
  "state": {
    "InProgress": {}
  },
  "addr": "terra1ly39tx476q7y3cj9rc33f8agm48ccg7qc02psmm27a4xjw87ut8q0nlwz4"
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Address Whitelist:

{% capture description %}
Gets a list of all wallet addresses on the smart contract whitelist
{% endcapture %}
{% capture key %}
all_address_whitelist
{% endcapture %}
{% capture object %}
{all_address_whitelist:{}}
{% endcapture %}
{% capture json %}
{"all_address_whitelist":{}}
{% endcapture %}
{% capture result %}
[
  "terra10tl78km5x65cv3jff45ep5333xq79fwdzh4dgz",
  "terra13nxtkm3y6elyuapq5ceysz7smlqzdgljxr9lm9",
  "terra177halsax009np6s7y0mwq23y5jrl8ww0z8h5n5",
  "terra1fq2axrgy7r2hqtxt7x79fm329nd005f2ehddyc",
  "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
  "terra1q04xu3lcgmzt5ayrx8dxkc6kyu9mpmn35szkgw",
  "terra1qje0jdhrhgcnju2ph8jdafcjr252wa2svqj3ly",
  "terra1r5h6fmlgc8h7ke2hlzlkgh3kvcdlxcy55s83rc",
  "terra1upleyfx24jehpgfy9d79d9scps20ffuf6vy706",
  "terra1ymc59uuuklnudfnkwhezzlnmec6f3cze7tsve9"
]
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Address Whitelist:

{% capture description %}
Gets information about an address in the whitelist
{% endcapture %}
{% capture key %}
address_whitelist
{% endcapture %}
{% capture object %}
{address_whitelist:{addr:"terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk"}}
{% endcapture %}
{% capture json %}
{"address_whitelist":{"addr":"terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk"}}
{% endcapture %}
{% capture result %}
{
  "name": "Trenten",
  "image_link": "https://avatars.githubusercontent.com/u/15914068?v=4",
  "roles": [
    "developer",
    "proposer",
    "booster",
    "strategist",
    "payee"
  ],
  "links": [
    "https://github.com/Tgrede"
  ],
  "proposal_id": "init"
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Token Whitelist:

{% capture description %}
Gets a list of all token addresses on the smart contract whitelist
{% endcapture %}
{% capture key %}
all_token_whitelist
{% endcapture %}
{% capture object %}
{all_token_whitelist:{}}
{% endcapture %}
{% capture json %}
{"all_token_whitelist":{}}
{% endcapture %}
{% capture result %}
[
  "terra1ss9zz4873vk4dd8dvua0vm83m6s8k7ctwp9efac0arytn6jthfgsy2d4a9"
]
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Token Whitelist:

{% capture description %}
Gets information about an token in the whitelist
{% endcapture %}
{% capture key %}
token_whitelist
{% endcapture %}
{% capture object %}
{token_whitelist:{name:"terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk"}}
{% endcapture %}
{% capture json %}
{"token_whitelist":{"name":"terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk"}}
{% endcapture %}
{% capture result %}
{
  "name": "YFD",
  "asset_type": {
    "cw20": "terra1ss9zz4873vk4dd8dvua0vm83m6s8k7ctwp9efac0arytn6jthfgsy2d4a9"
  },
  "stable": false,
  "oracle_address": "",
  "proposal_id": "1"
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Governance Parameter:

{% capture description %}
Gets a list of all governance parameters
{% endcapture %}
{% capture key %}
all_governance_parameter
{% endcapture %}
{% capture object %}
{all_governance_parameter:{}}
{% endcapture %}
{% capture json %}
{"all_governance_parameter":{}}
{% endcapture %}
{% capture result %}
[
  "ActiveProposalMax",
  "EmergencyMajority",
  "EmergencyQuorum",
  "EmergencyVoteLength",
  "FundingRatio",
  "GovernanceQuorum",
  "GovernanceVoteLength",
  "LockingBlockMultiplier",
  "MaxLockTime",
  "MaxNft"
]
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Governance Parameter:

### Types

| Type | Description |
| --- | --- |
| `BlockHeight` | Block height |
| `Decimal` | Decimal |
| `Integer` | Integer |
| | `...incomplete list` |


{% capture description %}
Gets information about a governance paramter in the list
{% endcapture %}
{% capture key %}
governance_parameter
{% endcapture %}
{% capture object %}
{governance_parameter:{name:"GovernanceVoteLength"}}
{% endcapture %}
{% capture json %}
{"governance_parameter":{"name":"GovernanceVoteLength"}}
{% endcapture %}
{% capture result %}
{
  "name": "Governance Proposal Voting Period Length",
  "description": "Amount of blocks that a governance proposal is considered active for voting, after which it no longer accepts votes.",
  "parameter_type": {
    "BlockHeight": {
      "value": "600",
      "min": "600",
      "max": "438000"
    }
  },
  "active": true
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Vault Funding Math:

{% capture description %}
Gets information about required funding information for a vault based on target funding and nft quantity
{% endcapture %}
{% capture key %}
vault_funding_math
{% endcapture %}
{% capture object %}
{vault_funding_math:{target_funding:"67000",nft_quantity:100}}
{% endcapture %}
{% capture json %}
{"vault_funding_math":{"target_funding":"67000","nft_quantity":100}}
{% endcapture %}
{% capture result %}
{
  "booster_shares": 67,
  "treasury_shares": 33,
  "share_price": "1000",
  "total_funding": "67000",
  "strategist_min": "4000"
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}