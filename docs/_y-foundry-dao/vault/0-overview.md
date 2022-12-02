---
layout: default
title: Creating Vaults
nav_order: 5
has_children: true
last_modified_date: 2022-12-01
---
Vaults
======

### What are vaults

In Decentralized Finance (DeFi), a vault is a pool of funds used to implement an investment strategy to benefit all users who have deposited assets in the vault. Through vaults, investors can access optimal on-chain strategies for farming, earning, investing, or more.

Another benefit of vaults is the fact that investors cut down on transactions fees. While vaults differ in complexity and risk profile, those associated with lower risk usually have simpler strategies.

-   Simple strategies include single asset staking (e.g. deposit $DAI for more $DAI) and LP tokens with automatic compounding of the farming rewards.

-   Higher risk strategies involve complex mechanics that include multiple farms and protocols.

In simpler terms, you can view a vault as a box that you deposit money in. The box then tries to make on-chain moves in an attempt to multiply that money.

![](/assets/images/figure/yfd-vaults.png)

### Implementation

Each vault has unique functions - specific to each vault and the code developed from the proposal and the interaction with the underlying asset platforms:

-   ​

    💸

    Deposit

-   ​

    💵

    Withdraw

-   ​

    💰

    Disbursement (of fees)

-   ​

    🛑

    Emergency Vault Stop

### Y-Foundry use cases

Y-Foundry takes vault implementation very seriously. We implement vaults based on [Proposals](/community/governance/proposals). Individual vault proposals can accept funds in stablecoins from users with fYFD points. Once fully funded and deployed, a vault proposal issues Booster NFTs to users who contributed funds, as well as the Proposer.

Funds can only be disbursed to the pre-whitelisted Developer specified in the proposal. Vault proposals will escrow development funds to the Developer, to be claimed on a block-based milestone basis.

The birth of a vault takes place off-chain, and involves coordination, discussions and multiple submissions. These steps are accomplished using various platforms and mediums:

-   DeWork

-   Discord

-   GitHub

{: .note}
> Be sure to check [Socials](/info/socials) for updated links.

### Lifecycle

Each vault has a lifespan and goes through various stages of development and use. Below you will find a simplified version of a vault's life cycle.

![](/assets/images/figure/a-vaults-life.png.png)

For a detailed explanation on each step in the life of a vault, please check [Life cycle](/info/references/life-cycle)