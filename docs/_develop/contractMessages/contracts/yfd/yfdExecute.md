---
layout: default
title: YFD Execute
parent: YFD Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 2
---

WIP
{: .label .label-blue}

# YFD Contract Executes

Below I will describe the possible Execute messages that can be used on this YFD contract in both object and JSON formats.

## Transfer:

{% capture description %}
Moves tokens into a recipients users wallet address
{% endcapture %}
{% capture key %}
transfer
{% endcapture %}
{% capture object %}
{
  transfer: {
    recipient: "Addr",
    amount: "123123",
  }
}
{% endcapture %}
{% capture json %}
{
  "transfer": {
    "recipient": "Addr",
    "amount": "123123",
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Send:

{% capture description %}
Similar to transfer. Moves tokens to a smart contract instead of a user wallet.
When processing a transaction, it triggers the given message in msg. The given message should be executable on its recipient contract.
msg is a base64-encoded JSON string.
{% endcapture %}
{% capture key %}
send
{% endcapture %}
{% capture object %}
{
  send: {
    contract: "Addr",
    amount: "123123",
    msg: "1234erwfaffaesfaef="
  }
}
{% endcapture %}
{% capture json %}
{
  "send": {
    "contract": "Addr",
    "amount": "123123",
    "msg": "1234erwfaffaesfaef="
  s}
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Burn:

{% capture description %}
Removes tokens from the balance of the connected wallet
{% endcapture %}
{% capture key %}
burn
{% endcapture %}
{% capture object %}
{
  burn: {
    amount: "123123"
  }
}
{% endcapture %}
{% capture json %}
{
  "burn": {
    "amount": "123123"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}
