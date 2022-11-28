---
layout: default
title: Whitelist
parent: Proposal Categories
grand_parent: References
nav_order: 30
---

Whitelist
=========

Whitelist proposals can target Adresses or Tokens.

Whitelist Address[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/whitelist#whitelist-address)

---------------------------------------------------------------------------------------------------------------------------------------

Needs a duplicate entry check for wallets. Missing role names are assumed to be "false".

###

Fields[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/whitelist#fields)

-   `whitelist_id` - Internal Reference ID.

-   `address` - Wallet Address that will pay the *Payee*. Must be on the same chain as the contract.

-   `image_url`

-   `roles` - {array}

-   `proposal_id` - ID of the proposal passed to approve whitelist address.

-   `name` - The name for reffering to the *Developer*. A text string with 40 characters or less, including letters, numbers, symbols and special characters: e.g. John Smith Dev Co. image -- identifiable visual mark, avatar, or picture.

-   `url` - Field used so *Payee* can link to website/related material.

Whitelist Token[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/whitelist#whitelist-token)

-----------------------------------------------------------------------------------------------------------------------------------

Token whitelists are used for on-chain proposals and governance actions, such as:

-   Vault Proposal funding

-   Vault Proposal payments

-   Treasury Spend

-   Global

Types of tokens:

-   Native

-   Stablecoin

-   General (CW20)

###

Fields[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/whitelist#fields-1)

-   `token_id` - Internal Reference ID.

-   `token_type` - Address type.

-   `proposal_id` - Proposal passed to approve whitelist address.

-   `name` - The name with which to refer to the token A text string with 40 characters or less, including letters, numbers, symbols and special characters: e.g. USDC.

-   `stablecoin` - True or False.

-   `address_oracle` - Address of price oracle.

-   `address_token` - Contract Address of the token, or symbol for native token.

-   `url`