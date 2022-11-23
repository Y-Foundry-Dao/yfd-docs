---
layout: default
title: NFT Execute
parent: NFT Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 2
---

WIP
{: .label .label-blue}

# NFT Contract Executes

<details markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Transfer NFT
{% capture description %}
Transfers NFT ownership to recipient address.
{% endcapture %}
{% capture key %}
transfer_nft
{% endcapture %}
{% capture object %}
{
  transfer_nft: {
    recipient: "[recipient address]",
    token_id: "[token id]"
  }
}
{% endcapture %}
{% capture json %}
{
  "transfer_nft":{
    "recipient":"[recipient address]",
    "token_id":"[token id]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Send NFT
{% capture description %}
Transfers ownership of token to contract address.
{% endcapture %}
{% capture key %}
send_nft
{% endcapture %}
{% capture object %}
{
  send_nft: {
    contract: "[recipient contract address]",
    token_id: "[token id]",
    msg: "[optional base64 encoded message]"
  }
}
{% endcapture %}
{% capture json %}
{
  "send_nft":{
    "contract":"[recipient contract address]",
    "token_id":"[token id]",
    "msg":"[optional base64 encoded message]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Approve
{% capture description %}
Grants permission to specified address to transfer a single token.
{% endcapture %}
{% capture key %}
approve
{% endcapture %}
{% capture object %}
{
  approve: {
    spender: "[spender address]",
    token_id: "[token id]",
    expires: {
      at_height: 999999
    }
  }
}
{% endcapture %}
{% capture json %}
{
  "approve":{
    "spender":"[spender address]",
    "token_id":"[token id]",
    "expires":{
      "at_height":999999
    }
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Revoke
{% capture description %}
Revokes permission of an address to transfer a token.
{% endcapture %}
{% capture key %}
revoke
{% endcapture %}
{% capture object %}
{
  revoke: {
    spender: "[spender address]",
    token_id: "[token id]"
  }
}
{% endcapture %}
{% capture json %}
{
  "revoke":{
    "spender":"[spender address]",
    "token_id":"[token id]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Approve All
{% capture description %}
Grants an address permission to transfer or send all tokens owned by the sender.
{% endcapture %}
{% capture key %}
approve_all
{% endcapture %}
{% capture object %}
{
  approve_all: {
    operator: "[address to approve]",
    expires: {
      at_height: 999999
    }
  }
}
{% endcapture %}
{% capture json %}
{
  "approve_all":{
    "operator":"[address to approve]",
    "expires":{
      "at_height":999999
    }
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Revoke All
{% capture description %}
Revokes permission previously granted to address by approve_all. 
{% endcapture %}
{% capture key %}
revoke_all
{% endcapture %}
{% capture object %}
{
  revoke_all: {
    operator: "[address to revoke]"
  }
}
{% endcapture %}
{% capture json %}
{
  "revoke_all":{
    "operator":"[address to revoke]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Claim Fees
{% capture description %}
Claim fees from NFT. 
{% endcapture %}
{% capture key %}
claim_fees
{% endcapture %}
{% capture object %}
{
  extension: {
    msg: {
      claim_fees: {
        claim_contract_addr: "[address]"
      }
    }
  }
}
{% endcapture %}
{% capture json %}
{
  "extension": {
    "msg": {
      "claim_fees": {
        "claim_contract_addr": "[address]"
      }
    }
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Batch Mint
{% capture description %}
Mint multiple NFTs in batch.
{% endcapture %}
{% capture key %}
batch_mint
{% endcapture %}
{% capture object %}
{
  extension: {
    msg: {
      batch_mint: {
      tokens: [
          {
            token_id: "1",
            owner: "[owner]",
            token_uri: "[URI for this NFT]",
            vault_shares: 5
          }
        ]
      }
    }
  }
}
{% endcapture %}
{% capture json %}
{
  "extension": {
    "msg": {
      "batch_mint": {
      "tokens": [
          {
            "token_id": "1",
            "owner": "[owner]",
            "token_uri": "[URI for this NFT]",
            "vault_shares": "5"
          }
        ]
      }
    }
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}