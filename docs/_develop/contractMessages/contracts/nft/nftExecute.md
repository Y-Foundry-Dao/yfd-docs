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

## Claim Fees
{% capture description %}
Claim fees from all NFTs associated with a claim contract. 
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