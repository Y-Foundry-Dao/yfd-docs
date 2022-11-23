---
layout: default
title: Proposal Execute
parent: Proposal Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 2
---

WIP
{: .label .label-blue}

# Proposal Contract Executes

<details markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Fund Proposal
{% capture description %}
Execute this command on the YFD contract address to fund a proposal. The YFD contract will then execute the funding message on the proposal contract. 
{% endcapture %}
{% capture key %}
send
{% endcapture %}
{% capture object %}
{
  send: {
    contract: "[proposal_address]",
    amount: "[amount]",
    msg: encodeBase64({ 
      stake: {} 
    })
  }
}
{% endcapture %}
{% capture json %}
{
  "send": {
    "contract": "[proposal_address]",
    "amount": "[amount]",
    "msg": "eyJzdGFrZSI6e319"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Finalize Proposal
{% capture description %}
For this and the rest of the commands, go to Contract in Terra Station, enter the proposal address, and click Execute. 
{% endcapture %}
{% capture key %}
finalize_proposal
{% endcapture %}
{% capture object %}
{
  finalize_proposal: {} 
}
{% endcapture %}
{% capture json %}
{
  "finalize_proposal": {}
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Pay Developer 
{% capture description %}
Release funds to the developer based on the funding schedule in the proposal. 
{% endcapture %}
{% capture key %}
pay_developer
{% endcapture %}
{% capture object %}
{
  pay_developer: {
    amount: "[amount]"
  }
}
{% endcapture %}
{% capture json %}
{
  "pay_developer": {
    "amount": "[amount]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Mint NFT
{% capture description %}
Execute to mint NFTs.
{% endcapture %}
{% capture key %}
mint_nft
{% endcapture %}
{% capture object %}
{
  mint_nft: {}
}
{% endcapture %}
{% capture json %}
{
  "mint_nft": {}
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Claim Stake
{% capture description %}
Execute to claim stakes.
{% endcapture %}
{% capture key %}
claim_stake
{% endcapture %}
{% capture object %}
{
  claim_stake: {}
}
{% endcapture %}
{% capture json %}
{
  "claim_stake": {}
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Emergency Cancel
{% capture description %}
Execute to initiate emergency cancellation of proposal. 
{% endcapture %}
{% capture key %}
emergency_cancel
{% endcapture %}
{% capture object %}
{
  emergency_cancel: {
    with_penalty: true
  }
}
{% endcapture %}
{% capture json %}
{
  "emergency_cancel": {
    "with_penalty": true
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}