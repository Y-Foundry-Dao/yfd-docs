---
layout: default
title: Vault Proposal
parent: Uni-6
nav_order: 4
---

# YFD CW20 Token Contract
`juno1fpql6u3l3q5eakz3ansam3kdzmc9ew5ctq75mwdmwf4qh84svevqamlket`


### Lock Governance Tokens in the Forge
```json
{
  "send": {
    "msg": "eyJzdGFrZSI6eyJsb2NrX2R1cmF0aW9uIjoxMDUxMjAwMH19",
    "amount": "10000000000",
    "contract": "juno103rwhg7qyaj4m5dzhl92mm74h97x68swraxcsp9aehex38v0zwjqhtdl4q"
  }
}
```
# decoded
```json
{
  "stake": {
    "lock_duration": 105120000
  }
}
```

### Whitelist Token

```json
{
  "create_proposal": {
    "emergency": true,
    "proposal_type": {
      "token_whitelist": {
        "token": "juno1fpql6u3l3q5eakz3ansam3kdzmc9ew5ctq75mwdmwf4qh84svevqamlket",
        "change": {
          "new": {
            "name": "YFDJ",
            "stable": false,
            "asset_type": "cw20",
            "token_to_usd": "0.01",
            "oracle_address": ""
          }
        }
      }
    },
    "justification_link": "String"
  }
}
```

### Finalize Prop
```json
{
  "finalize_proposal": {
    "idx": "1"
  }
}
```

### Submit a Vault Funding Proposal
```json

{
  "send": {
    "msg": "eyJjcmVhdGVfdmF1bHRfcHJvcG9zYWwiOnsibXNnIjp7InByb3Bvc2FsX2luZm8iOnsibmFtZSI6Ikp1bm9fVGVzdCIsInRpY2tlciI6IlRFU1QiLCJwcm9wb3NhbF91cmwiOiJ3d3cuZXhhbXBsZS5jb20iLCJ0dmxfbGltaXQiOiIxMDAwMDAwIiwiY29udGFjdCI6WyJub2JvZHlAd3d3LmV4YW1wbGUuY29tIl0sImRldmVsb3BlciI6Imp1bm8xZ3QwZDhmNDUzenlhcjBmeWVzdmF0NHE4NmZqMmp5ZXNnZ3BoY3MiLCJkZXZlbG9wbWVudF9jb3N0IjoiNjcwMDAiLCJmdW5kaW5nX29ubHkiOmZhbHNlLCJmdW5kaW5nX2Rlbm9taW5hdGlvbiI6Imp1bm8xZnBxbDZ1M2wzcTVlYWt6M2Fuc2FtM2tkem1jOWV3NWN0cTc1bXdkbXdmNHFoODRzdmV2cWFtbGtldCIsIm5mdF9xdWFudGl0eSI6MTAwLCJzdGF0ZW1lbnRfb2Zfd29yayI6Ind3dy5leGFtcGxlLmNvbSIsIm51bV9wYXltZW50cyI6MiwicGF5bWVudF9mcmVxdWVuY3kiOjEwLCJnaXRodWIiOiJ3d3cuZXhhbXBsZS5jb20iLCJzZWxmX3ZvdWNoZWRfaW5mb3JtYXRpb24iOiJ3d3cuZXhhbXBsZS5jb20ifX19fQ==",
    "amount": "5000",
    "contract": "juno103rwhg7qyaj4m5dzhl92mm74h97x68swraxcsp9aehex38v0zwjqhtdl4q"
  }
}
```

### JSon for Vault Creation Decoded
```json
{
    "create_vault_proposal":
    {
        "msg":
        {
            "proposal_info":
            {
                "name":"Juno_Test",
                "ticker":"TEST",
                "proposal_url":"www.example.com",
                "tvl_limit":"1000000",
                "contact":["nobody@www.example.com"],
                "developer":"juno1gt0d8f453zyar0fyesvat4q86fj2jyesggphcs",
                "development_cost":"67000",
                "funding_only":false,
                "funding_denomination":"juno1fpql6u3l3q5eakz3ansam3kdzmc9ew5ctq75mwdmwf4qh84svevqamlket",
                "nft_quantity":100,
                "statement_of_work":"www.example.com",
                "num_payments":2,
                "payment_frequency":10,
                "github":"www.example.com",
                "self_vouched_information":"www.example.com"
            }
        }
    }
}
```
