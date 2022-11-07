---
layout: default
title: YFD Query
parent: YFD Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 1
---

# YFD Contract Queries

<details markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

Below I will describe the possible Query messages that can be used on this YFD contract in both object and JSON formats

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
  "name": "Y-Foundry DAO",
  "symbol": "YFD",
  "decimals": 6,
  "total_supply": "10000000000000"
}  
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Download Logo:

{% capture description %}
Downloads the on-chain logo for the YFD token if there is one
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
Gets the marketing information for the YFD token
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
  "logo": {
    "url": "https://yfoundry.io/logo-512-orange-transparent-square.png"
  },
  "marketing": null
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Accounts:

{% capture description %}
Gets all wallet addressess that hold YFD
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
Gets the YFD balance of the given wallet address. Balance is returned in microunits
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

## Allowance:

{% capture description %}
Gets the allowance list of the given owner and spender
{% endcapture %}
{% capture key %}
allowance
{% endcapture %}
{% capture object %}
{
  allowance: {
    owner: "Addr",
    spender: "Addr"
  }
}
{% endcapture %}
{% capture json %}
{
  "allowance": {
    "owner": "Addr",
    "spender": "Addr"
  }
}
{% endcapture %}
{% capture result %}
Work In Progress
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Allowances:

{% capture description %}
Gets the list of all allowances of the token that owner received and not expired
{% endcapture %}
{% capture key %}
all_allowances
{% endcapture %}
{% capture object %}
{
  all_allowances: {
    owner: "Addr",
    start_after: "Addr",
    limit: 1 
  }
}
{% endcapture %}
{% capture json %}
{
  "all_allowances": {
    "owner": "Addr",
    "start_after": "Addr",
    "limit": 1 
  }
}
{% endcapture %}
{% capture result %}
{"allowances": []}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}