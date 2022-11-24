---
layout: default
title: NFT Query
parent: NFT Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 1
---

WIP
{: .label .label-blue}

# NFT Contract Queries

<details markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Token Number:
{% capture description %}
Returns the total number of tokens in the contract.
{% endcapture %}
{% capture key %}
num_tokens
{% endcapture %}
{% capture object %}
{
  num_tokens: {}
}
{% endcapture %}
{% capture json %}
{
  "num_tokens": {}
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "count": 100
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Tokens
{% capture description %}
Returns the first ten tokens in the contract. 
{% endcapture %}
{% capture key %}
all_tokens
{% endcapture %}
{% capture object %}
{
  all_tokens: {
    start_after: "",
    limit: 10
  }
}
{% endcapture %}
{% capture json %}
{
  "all_tokens": {
    "start_after": "",
    "limit": 10
  }
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "tokens": [
      "1",
      "10",
      "100",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17"
    ]
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Tokens
{% capture description %}
Lists the first ten tokens owned by the specified address.
{% endcapture %}
{% capture key %}
tokens
{% endcapture %}
{% capture object %}
{
  tokens: {
    owner: "[owner]",
    start_after: "",
    limit: 10
  }
}
{% endcapture %}
{% capture json %}
{
  "tokens": {
    "owner": "[owner]",
    "start_after": "",
    "limit": 10
  }
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "tokens": [
      "1",
      "10",
      "100",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17"
    ]
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## NFT Info
{% capture description %}
Returns token info and number of shares assigned to the token.
{% endcapture %}
{% capture key %}
nft_info
{% endcapture %}
{% capture object %}
{
  nft_info: {
    token_id: "[token id]"
  }
}
{% endcapture %}
{% capture json %}
{
  "nft_info": {
    "token_id": "[token id]"
  }
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "token_uri": null,
    "extension": {
      "vault_shares": "1"
    }
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Owner Of
{% capture description %}
Returns the owner of a token.
{% endcapture %}
{% capture key %}
owner_of
{% endcapture %}
{% capture object %}
{
  owner_of: {
    token_id: "[token id]"
  }
}
{% endcapture %}
{% capture json %}
{
  "owner_of": {
    "token_id": "[token id]"
  }
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "owner": "terra17lmam6zguazs5q5u6z5mmx76uj63gldnse2pdp",
    "approvals": []
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Pending Claims
{% capture description %}
Returns pending claims that the owner of the NFT has from the claim contract.
{% endcapture %}
{% capture key %}
pending_claims
{% endcapture %}
{% capture object %}
{
  extension: {
    msg: {
      pending_claims: {
        claim_contract_addr: "[claim contract address]",
        owner_addr: "[NFT owner address]"
      }
    }
  }
}
{% endcapture %}
{% capture json %}
{
  "extension": {
    "msg": {
      "pending_claims": {
        "claim_contract_addr": "[claim contract address]",
        "owner_addr": "[NFT owner address]"
      }
    }
  }
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "claims": []
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}