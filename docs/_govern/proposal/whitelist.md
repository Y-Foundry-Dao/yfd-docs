---
layout: default
title: π Whitelist
nav_order: 15
parent: Proposals
has_children: false
last_modified_date: 2022-11-05
---

WIP
{: .label .label-blue}


## Whitelist Address
Need a duplicate entry check for wallet
Missing role names are assumed to be βfalseβ

* Roles:
    - [ ] Developer
    - [ ] Proposer
    - [ ] Booster
    - [ ] Strategist
    - [ ] Payee
		
### Information
* whitelist_id β Internal Reference ID
* address β Wallet Address to Pay the payee. To be on the same chain as the contract.
* image_url
* roles 
    - {array}
* proposal_id β Proposal passed to approve whitelist address
* name β The name with which the developer will be referred to A text string with 40 characters or less, including letters, numbers, symbols and special characters: e.g. John Smith Dev Co.
image β identifiable visual mark, avatar, or picture.
* url  β Field used so Payee can link to website/related material

***

## Whitelist Token
> Token whitelists are used for on-chain proposal and governance actions

* Vault Proposal funding
* Vault Proposal payments
* Treasury Spend

* Global
* Types
    - [ ] Native
    - [ ] Stablecoin
    - [ ] General (CW20)

#### Information
* Token_id β Internal Reference ID
* Token_type β address type
* proposal_id β Proposal passed to approve whitelist address
* name β The name with which to refer to the token
A text string with 40 characters or less, including letters, numbers, symbols and special characters: e.g.  USDC
* stablecoin - true or false 
* address_oracle - address of price oracle
* address_token β contract address of the token, or symbol for native token
* url  (maybe)β website or IPFS with token related material (coingecko, coinmarketcap) 