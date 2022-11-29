---
layout: default
title: Vault
parent: Proposal Categories
grand_parent: References
nav_order: 50
---

Vault
=====

Vault Proposals are related to the creation and funding of vaults.

These details are supplied by the *Strategist* when submitting a vault proposal to governance for approval. A successful submission of the Vault Creation proposal instantiates a unique instance of the Vault Proposal Contract.

Steps needed to pass a vault proposal:

-   1.

    Voting

-   2.

    Funding

-   3.

    Deployment Proposal / Approval

###

Fields[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/vault#technical-details)

-   `Vault Name` - The name created vault will be referred by.

-   `Text String` - 40 characters or less, including letters, numbers, symbols and special characters: e.g. Hedge+.

-   `Vault Ticker` - Short abbreviation/ticker for the Vault - like an exchange ticker. Must be a unique value among all vaults - active and in process.

-   `Strategy Proposal URL` - Text field linking the IPFS or URL to proposal PDF.

-   `Strategy TVL Minimum` (in USD) - Value must be greater or equal to Vault Proposal TVL Minimum Limit. This requirement is modifiable by a governance vote.

-   `Developer's Payment Wallet Address` - Payment address for the *Developer*. Must match an entry in Whitelist Entry and role must be *Developer*.

-   `Developer Funding Requirement` - The amount of funds needed to develop the vault, based on sprints and statements of work from the associated *Developer*. An integer representing USD value in stablecoin; must be greater than the minimum value and less than the maximum : e.g. $80,000. Initial Minimum value: $5,000. Can be changed by Vault Proposal Developer Funding Minimum.governance parameter. Initial Maximum value: $1,000,000. Can be changed by Vault Proposal Developer Funding Maximum.governance parameter.

-   `Developer Proposal URL` - Text field linking to IPFS or URL to Statement of Work / Sprint Details.

-   `Developer Initial Up-Front Payment` (optional) - Default is $0; Maximum is limited to the *Proposer's* portion of funding.

-   `Developer Payment Distribution Schedule` - How many payments to be made. Developer Payment Frequency - How frequently payments are to be made; represented in Blocks.

-   `Github for Vault Contracts` - Must be live before proposal, human checks only; repository resides in Y-Foundry DAO github account.

-   `*Strategist/*``Proposal Contribution` - Minimum: 5% of total Development Funding Requested; *Proposer* can fund up to 100% of Developer Funding Requirements. 100% funding means Self-funded and no booster funds are requested / permitted.

To self-fund, the *Strategist* must possess sufficient fYFD to meet the fYFD proposal funding requirements.

###

Immutable Values to Store:[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/vault#immutable-values-to-store)

-   Current market $YFD price

-   Current multiplier for $YFD to fYFD

-   Amount of blocks remaining to unlock block for the Strategist's YFD

-   Current Ratio for fYFD to YFD stablecoin funding

-   Use current parameter value defined by YFD governance In Forge Contract?

-   Strategist's Wallet Address

-   Stored from connected wallet of Strategist / submission

-   Must have entry in Strategist developer list

-   Create on submission would be acceptable - or separate function/process

-   Vault Proposal Funding Distribution Voting Period Length

-   Vault Proposal Funding Distribution Voting Quorum

ALL