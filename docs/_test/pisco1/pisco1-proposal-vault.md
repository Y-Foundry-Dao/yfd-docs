---
layout: default
title: Vault Proposal
parent: Pisco-1
nav_order: 4
---
WIP
{: .label .label-blue }


# YFD CW20 Token Contract
https://station.terra.money/contract/execute/terra1ss9zz4873vk4dd8dvua0vm83m6s8k7ctwp9efac0arytn6jthfgsy2d4a9


### Submit a Vault Funding Proposal
```json
{
  "send": {
    "contract": "terra1s5hg4kusnnp5q8r8l0das4tftd50xcve4e2l95eqjy3fgducekfsw6yder",
    "amount": "5000",
    "msg": "ewogICAgImNyZWF0ZV92YXVsdF9wcm9wb3NhbCI6IHsKICAgICAgICAibXNnIjogewogICAgICAgICAgICAicHJvcG9zYWxfaW5mbyI6IHsKICAgICAgICAgICAgICAgICJuYW1lIjogIlNwcmludCA4IFZhdWx0IFRlc3QiLAogICAgICAgICAgICAgICAgInRpY2tlciI6ICJTRUlHSFQiLAogICAgICAgICAgICAgICAgInByb3Bvc2FsX3VybCI6ICJ3d3cuZXhhbXBsZS5jb20iLAogICAgICAgICAgICAgICAgInR2bF9saW1pdCI6ICIxMDAwMDAwIiwKICAgICAgICAgICAgICAgICJjb250YWN0IjogWwogICAgICAgICAgICAgICAgICAgICJub2JvZHlAd3d3LmV4YW1wbGUuY29tIgogICAgICAgICAgICAgICAgXSwKICAgICAgICAgICAgICAgICJkZXZlbG9wZXIiOiAidGVycmExbWd3eTBqeGZzbW44dnR5eGVwbnRsems2bTcwMzBqZWprbTV4aGsiLAogICAgICAgICAgICAgICAgImRldmVsb3BtZW50X2Nvc3QiOiAiNjcwMDAiLAogICAgICAgICAgICAgICAgImZ1bmRpbmdfb25seSI6IGZhbHNlLAogICAgICAgICAgICAgICAgImZ1bmRpbmdfZGVub21pbmF0aW9uIjogInRlcnJhMTI5M2w5cmdxazV2eG5kYWVxbWVuZ3NzZzNwZGNoNTdxcGVwZ3NsaDdwMnNnM2xxZDg3cnNzOGR1NHMiLAogICAgICAgICAgICAgICAgIm5mdF9xdWFudGl0eSI6IDEwMCwKICAgICAgICAgICAgICAgICJzdGF0ZW1lbnRfb2Zfd29yayI6ICJ3d3cuZ2l0aHViLmNvbSIsCiAgICAgICAgICAgICAgICAibnVtX3BheW1lbnRzIjogNCwKICAgICAgICAgICAgICAgICJwYXltZW50X2ZyZXF1ZW5jeSI6IDEwLAogICAgICAgICAgICAgICAgImdpdGh1YiI6ICJ3d3cuZXhhbXBsZS5jb20iLAogICAgICAgICAgICAgICAgInNlbGZfdm91Y2hlZF9pbmZvcm1hdGlvbiI6ICJ3d3cueWZvdW5kcnkuaW8iCiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9Cn0="
  }
}
```

### JSon for Vault Creation Decoded
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
                "development_cost": "67000",
                "funding_only": false,
                "funding_denomination": "terra1293l9rgqk5vxndaeqmengssg3pdch57qpepgslh7p2sg3lqd87rss8du4s",
                "nft_quantity": 100,
                "statement_of_work": "www.github.com",
                "num_payments": 2,
                "payment_frequency": 10,
                "github": "www.example.com",
                "self_vouched_information": "www.yfoundry.io"
            }
        }
    }
}
```
