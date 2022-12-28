---
layout: default
title: Vault Proposal
parent: Pisco-1
nav_order: 4
---
WIP
{: .label .label-blue }


# YFD CW20 Token Contract

### Submit a Vault Funding Proposal
**Message sent to CW20 Token Contract that being used for the deposit**

```json
{
    "send": {
        "contract": "terra1ua4nwargz3udh5wlnu0l8knvymr4fsc0mnq426qz442f93zjrw5s63jcst",
        "amount": "5000000000",
        "msg": "ewogICAgImNyZWF0ZV92YXVsdF9wcm9wb3NhbCI6IHsKICAgICAgICAibXNnIjogewogICAgICAgICAgICAicHJvcG9zYWxfaW5mbyI6IHsKICAgICAgICAgICAgICAgICJuYW1lIjogIlNwcmludCA4IFZhdWx0IFRlc3QiLAogICAgICAgICAgICAgICAgInRpY2tlciI6ICJTRUlHSFQiLAogICAgICAgICAgICAgICAgInByb3Bvc2FsX3VybCI6ICJ3d3cuZXhhbXBsZS5jb20iLAogICAgICAgICAgICAgICAgInR2bF9saW1pdCI6ICIxMDAwMDAwIiwKICAgICAgICAgICAgICAgICJjb250YWN0IjogWwogICAgICAgICAgICAgICAgICAgICJub2JvZHlAd3d3LmV4YW1wbGUuY29tIgogICAgICAgICAgICAgICAgXSwKICAgICAgICAgICAgICAgICJkZXZlbG9wZXIiOiAidGVycmExbWd3eTBqeGZzbW44dnR5eGVwbnRsems2bTcwMzBqZWprbTV4aGsiLAogICAgICAgICAgICAgICAgImRldmVsb3BtZW50X2Nvc3QiOiAiNTAwMDAwMDAwMDAiLAogICAgICAgICAgICAgICAgImZ1bmRpbmdfb25seSI6IGZhbHNlLAogICAgICAgICAgICAgICAgImZ1bmRpbmdfZGVub21pbmF0aW9uIjogInRlcnJhMTI5M2w5cmdxazV2eG5kYWVxbWVuZ3NzZzNwZGNoNTdxcGVwZ3NsaDdwMnNnM2xxZDg3cnNzOGR1NHMiLAogICAgICAgICAgICAgICAgIm5mdF9xdWFudGl0eSI6IDEwMCwKICAgICAgICAgICAgICAgICJzdGF0ZW1lbnRfb2Zfd29yayI6ICJ3d3cuZ2l0aHViLmNvbSIsCiAgICAgICAgICAgICAgICAibnVtX3BheW1lbnRzIjogNCwKICAgICAgICAgICAgICAgICJwYXltZW50X2ZyZXF1ZW5jeSI6IDEwLAogICAgICAgICAgICAgICAgImdpdGh1YiI6ICJ3d3cuZXhhbXBsZS5jb20iLAogICAgICAgICAgICAgICAgInNlbGZfdm91Y2hlZF9pbmZvcm1hdGlvbiI6ICJ3d3cueWZvdW5kcnkuaW8iCiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9Cn0="
    }
}
```

### JSon for Vault Creation Decoded

To create a new vault proposal execute a `send` message to the 
`funding_denomination` contract address with an `amount` of the contract token 
sent being equal to or greater than `5%` of the `development_cost` defined in 
the message below.

Within the send message above, a base64 econded `msg` declaring 
`create_vault_proposal` must be included. The message below represents the 
decoded contents of a vault creation message.  This message declares a vault 
proposal will be created with TVL limit of `1000000` (1 Million USD) and a 
developer address is `terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk` 
The development cost is `50000000000` (50,000) of the deposit token (in this 
case `yfd` - `terra1293l9rgqk5vxndaeqmengssg3pdch57qpepgslh7p2sg3lqd87rss8du4s`).
The total number of payments to the developer will be `4` with a payment 
frequency of `600 blocks` representing 1 hour of time on Terra2 at 1 block per 
6 seconds.
The instantiated contract from the `create_vault_proposal` message will accept 
community funding totally 45,000 (development_cost minus initial amount) in `yfd` 
tokens.  The increment of funding deposit denominations is `450` yfd per deposit 
and has been determined by by the community funding (45,000) divided by the 
`nft_quantity` of `100` to be minted. 

```json
{
    "create_vault_proposal": {
        "msg": {
            "proposal_info": {
                "name": "Sprint 8 Vault Test",
                "ticker": "SEIGHT",
                "proposal_url": "www.example.com",
                "tvl_limit": "1000000",
                "contact": [
                    "nobody@www.example.com"
                ],
                "developer": "terra1mgwy0jxfsmn8vtyxepntlzk6m7030jejkm5xhk",
                "development_cost": "50000000000",
                "funding_only": false,
                "funding_denomination": "terra1293l9rgqk5vxndaeqmengssg3pdch57qpepgslh7p2sg3lqd87rss8du4s",
                "nft_quantity": 100,
                "statement_of_work": "www.github.com",
                "num_payments": 4,
                "payment_frequency": 600,
                "github": "www.example.com",
                "self_vouched_information": "www.yfoundry.io"
            }
        }
    }
}
```

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