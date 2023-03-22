---
layout: default
title: Contract Addresses
parent: Uni-6
nav_order: 1
last_modified_date: 2023-03-21
---

WIP
{: .label .label-blue}

# Contract Addresses

Use [CosmWasm Tools](https://cosmwasm.tools/)
[Block Explorer - Mintscan](https://testnet.mintscan.io/juno-testnet)

## Contracts

| Name      | Code ID | Contract Address |
|:----------|:--------|:------------------------------------------------------------------|
| $YFDJ CW20 |  995   | juno1fpql6u3l3q5eakz3ansam3kdzmc9ew5ctq75mwdmwf4qh84svevqamlket  |
| [Forge](https://finder.terra.money/testnet/tx/5A19601786BC095E54FB76451D442AAD4B44D6055E798CC9F47D637165CF47C2)     | 5935    | juno103rwhg7qyaj4m5dzhl92mm74h97x68swraxcsp9aehex38v0zwjqhtdl4q  |

| Name                     |    Type         | Code_Id | Location ( .wasm ) |
|:-------------------------|:----------------|:--------|:-----------------------------------------------|
| $YFD CW20              | CW20 Token      |   995  | yfd-token/artifacts/cw20_base                  |
| Forge                    | Gov / Treasury  |   1001  | yfd-governance/artifacts/forge_contract        |
| Vault / Funding Proposal | Factory         |   996  | yfd-governance/artifacts/yfd_proposal_contract |
| CW20 Vote                | Factory         |   997  | yfd-governance/artifacts/cw20_vote             |
| CW721 Fee Distribution   | Infrastructure  |   998  | yfd-governance/artifacts/cw721_fee_distribution|
| Stub Vault               | Vault           |   999  | yfd-governance/artifacts/stub_vault            |
| Liquidated Vault         | Vault           |   1000  | yfd-governance/artifacts/liquidated_vault      |
| Claim Contract           | Infrastructure  |   ---  | yfd-claim/artifacts/yfd_claim                  |


## Deprecated Contracts

| Name      | Code ID | Contract Address |
|:----------|:--------|:------------------------------------------------------------------|
|  none | --- | --- |
