---
layout: default
title: Vault Proposal Query
parent: Vault Proposal Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 1
---

WIP
{: .label .label-blue}

# Vault Proposal Contract Queries

<details markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

Below I will describe the possible Query messages that can be used on the vault proposal contracts in both object and JSON formats

## Token Info:

{% capture description %}
Gets the on-chain information about the token stored on the blockchain
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
  "name": "YFD Governance Proposal AAAB",
  "symbol": "YFD_GOVAAAB",
  "decimals": 6,
  "total_supply": "24999852549"
} 
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Accounts:

{% capture description %}
Gets all wallet addressess that hold vote tokens
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
Gets the token balance of the given wallet address. Balance is returned in microunits
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

## Votes:

{% capture description %}
Gets the information on the status of voting.
Balances are returned in microunits.
Blocks are used for expiration and quorum_block
{% endcapture %}
{% capture key %}
votes
{% endcapture %}
{% capture object %}
{votes:{}}
{% endcapture %}
{% capture json %}
{"votes":{}}
{% endcapture %}
{% capture result %}
{
  "affirm": "24999852549",
  "deny": "0",
  "deny_with_penalty": "0",
  "abstain": "0",
  "total_supply": "24999852549",
  "expiration": 2619871,
  "quorum_block": 2519140,
  "vote_state": {
    "Affirm": {}
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Download Logo:

{% capture description %}
Downloads the on-chain logo for the token if there is one
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
Gets the on-chain marketing information for the smart contracts token
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


## Proposal Info:

{% capture description %}
Gets the proposal information
{% endcapture %}
{% capture key %}
proposal_info
{% endcapture %}
{% capture object %}
{proposal_info:{}}
{% endcapture %}
{% capture json %}
{"proposal_info":{}}
{% endcapture %}
{% capture result %}
{
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
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Proposal State:

{% capture description %}
Gets the information about voting on the proposal
{% endcapture %}
{% capture key %}
proposal_state
{% endcapture %}
{% capture object %}
{proposal_state:{}}
{% endcapture %}
{% capture json %}
{"proposal_state":{}}
{% endcapture %}
{% capture result %}
{
  "state": {
    "InProgress": {}
  },
  "initial_vote": "terra1vqgsa9lapqvzwkk4mcya924yku5fp5rzt5s4eezwagvud4uk52rqnvdr2w"
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Funds:

{% capture description %}
Gets the information about the proposals funding status
{% endcapture %}
{% capture key %}
funds
{% endcapture %}
{% capture object %}
{funds:{}}
{% endcapture %}
{% capture json %}
{"funds":{}}
{% endcapture %}
{% capture result %}
{
  "balance": "5000",
  "development_cost": "67000",
  "distributable": null
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}