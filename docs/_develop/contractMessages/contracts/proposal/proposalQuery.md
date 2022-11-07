---
layout: default
title: Proposal Query
parent: Proposal Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 1
---

WIP
{: .label .label-blue}

# Proposal Contract Queries

<details markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

Below I will describe the possible Query messages that can be used on the proposal contracts in both object and JSON formats

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

## Initial Accounts:

{% capture description %}
Gets all wallet addressess that initially held vote tokens
{% endcapture %}
{% capture key %}
initial_accounts
{% endcapture %}
{% capture object %}
{initial_accounts:{}}
{% endcapture %}
{% capture json %}
{"inital_accounts":{}}
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
