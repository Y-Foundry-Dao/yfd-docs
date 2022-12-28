---
layout: default
title: Vault Proposal Funding
parent: Pisco-1
nav_order: 50
last_modified_date: 2022-12-28
---
WIP
{: .label .label-blue }


# YFD CW20 Token Contract

### Submit Funding to an existing Vault Creation Proposal
**Message sent to CW20 Token Contract that being used for the deposit**

### JSon for Vault Funding

To fund a vault proposal execute a `send` message to the `funding_denomination` CW-20 contract address
```json
{
  "send": {
    "contract": "[proposal_address]",
    "amount": "[amount]",
    "msg": "eyJzdGFrZSI6e319"
  }
}
```
### JSon for Vault Funding Decoded
`eyJzdGFrZSI6e319` is the base64 encoded message of:
`{"stake":{}}`