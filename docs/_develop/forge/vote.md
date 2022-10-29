---
layout: default
title: Vote
parent: 🔥 Forge
has_children: false
nav_order: 1
---


## Forge -> Proposal -> Vote

### Vote Contract

#### InitMsg

```json
{
  "name": "YFD Governance Proposal AAAC",
  "symbol": "YFD_GOVAAAC",
  "decimals": 6,
  "initial_balances": [
    {
      "address": "address1",
      "amount": "25036788606"
    },
    {
      "address": "address2",
      "amount": "260917758276"
    },
    {
      "address": "address3",
      "amount": "80470310122"
    }
  ],
  "expiration": 100800,
  "quorum_percent": "0.3",
  "vote_type": {
    "emergency": {}
  },
  "majority_percent": "0.501"
}
```

#### Vote Affirm

```json
{
  "vote_affirm": {
    "amount": ""
  }
}
```


#### Finalize Vote

```json
{
  "finalize_vote": {
    "idx": ""
  }
}
```