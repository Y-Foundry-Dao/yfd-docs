---
layout: default
title: Vote Query
parent: Vote Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 1
---

WIP
{: .label .label-blue}

# Vote Contract Queries

## Token Info
{% capture description %}
Gets the on-chain information about the vote token.
{% endcapture %}
{% capture key %}
Token Info
{% endcapture %}
{% capture object %}
{
  token_info: {}
}
{% endcapture %}
{% capture json %}
{
  "token_info": {}
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "name": "Foo_name",
    "symbol": "TEST",
    "decimals": 6,
    "total_supply": "2499995"
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## All Accounts
{% capture description %}
Gets all wallet addressess that hold vote tokens.
{% endcapture %}
{% capture key %}
All Accounts
{% endcapture %}
{% capture object %}
{
  all_accounts: {}
}
{% endcapture %}
{% capture json %}
{
  "all_accounts": {}
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "accounts": [
      "terra17lmam6zguazs5q5u6z5mmx76uj63gldnse2pdp"
    ]
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Initial Accounts
{% capture description %}
Gets all wallet addresses that held vote tokens for a vote that has been finalized. 
{% endcapture %}
{% capture key %}
Initial Accounts
{% endcapture %}
{% capture object %}
{
  initial_accounts: {}
}
{% endcapture %}
{% capture json %}
{
  "initial_accounts": {}
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "accounts": [
      "terra17lmam6zguazs5q5u6z5mmx76uj63gldnse2pdp"
    ]
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Balance
{% capture description %}
Returns the number of votes the specified address has. 
{% endcapture %}
{% capture key %}
Balance
{% endcapture %}
{% capture object %}
{
  balance: { 
    address: "[account_address]"
  }
}
{% endcapture %}
{% capture json %}
{
  "balance": { 
    "address": "[account_address]"
  }
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "balance": "2499995"
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}

## Votes
{% capture description %}
Returns the total number of votes available, the voting expiration block, the block quorum was reached if it has, the block voting ends on, and the current state of the proposal. It will also return the total counts of each vote option in the case of emergency votes and after the end of the standard vote.
{% endcapture %}
{% capture key %}
Votes
{% endcapture %}
{% capture object %}
{
  votes: {}
}
{% endcapture %}
{% capture json %}
{
  "votes": {}
}
{% endcapture %}
{% capture result %}
{
  "data": {
    "affirm": "0",
    "deny": "0",
    "deny_with_penalty": "0",
    "abstain": "0",
    "total_supply": "2499995",
    "expiration": 203048,
    "quorum_block": null,
    "vote_state": {
      "InProgress": {}
    }
  }
}
{% endcapture %}

{% include message_query_info.html description=description key=key object=object json=json result=result %}