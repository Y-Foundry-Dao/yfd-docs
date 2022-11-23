---
layout: default
title: Vote Execute
parent: Vote Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 2
---

WIP
{: .label .label-blue}

# Vote Contract Executes

<details markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

In Terra Station go to Contract, enter the vote contract address, enter one of the following messages, and click Execute. You can use the proposal_state query on the proposal contract to get the address of the vote contract. 

## Vote Affirm
{% capture description %}
Execute to vote affirm.
{% endcapture %}
{% capture key %}
vote_affirm
{% endcapture %}
{% capture object %}
{
  vote_affirm: {
    amount: "[amount of votes]"
  }
}
{% endcapture %}
{% capture json %}
{
  "vote_affirm": {
    "amount": "[amount of votes]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Vote Deny
{% capture description %}
Execute to vote deny.
{% endcapture %}
{% capture key %}
vote_deny
{% endcapture %}
{% capture object %}
{
  vote_deny: {
    amount: "[amount of votes]"
  }
}
{% endcapture %}
{% capture json %}
{
  "vote_deny": {
    "amount": "[amount of votes]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Vote Affirm with Penalty
{% capture description %}
Execute to vote affirm with penalty. 
{% endcapture %}
{% capture key %}
vote_affirm_with_penalty
{% endcapture %}
{% capture object %}
{
  vote_affirm_with_penalty: {
    amount: "[amount of votes]"
  }
}
{% endcapture %}
{% capture json %}
{
  "vote_affirm_with_penalty": {
    "amount": "[amount of votes]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Vote Deny with Penalty
{% capture description %}
Execute to vote deny with penalty. 
{% endcapture %}
{% capture key %}
vote_deny_with_penalty
{% endcapture %}
{% capture object %}
{
  vote_deny_with_penalty: {
    amount: "[amount of votes]"
  }
}
{% endcapture %}
{% capture json %}
{
  "vote_deny_with_penalty": {
    "amount": "[amount of votes]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Vote Abstain
{% capture description %}
Execute to abstain from the vote.
{% endcapture %}
{% capture key %}
vote_abstain
{% endcapture %}
{% capture object %}
{
  vote_abstain: {
    amount: "[amount of votes]"
  }
}
{% endcapture %}
{% capture json %}
{
  "vote_abstain": {
    "amount": "[amount of votes]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Finalize Vote
{% capture description %}
Execute to finalize the vote. 
{% endcapture %}
{% capture key %}
finalize_vote
{% endcapture %}
{% capture object %}
{
  finalize_vote: {} 
}
{% endcapture %}
{% capture json %}
{
  "finalize_vote": {}
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Emergency Cancel
{% capture description %}
Execute to initiate an emergency cancellation of the vote. 
{% endcapture %}
{% capture key %}
emergency_cancel
{% endcapture %}
{% capture object %}
{
  emergency_cancel: {}
}
{% endcapture %}
{% capture json %}
{
  "emergency_cancel": {}
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}