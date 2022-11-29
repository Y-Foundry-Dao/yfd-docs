---
layout: default
title: NFT Generation
parent: Life cycle
grand_parent: References
nav_order: 65
---

NFT Generation
==============

In MVP each NFT is worth an equal amount of profit sharing.

Fields common to all NFTs:

-   `animation_url` - URL linking to the animation

-   `royalty_amount` - 0

-   `copyright_transfer` - no

-   `address` - Token contract address on the chain

-   `resellable` - yes

-   `original_creator` - Y-Foundry DAO

-   `edition_number` - 1

-   `url` - https://yfoundry.io/

-   `file_key` - The downloadable file for the NFT

-   `name` - Name of the artwork from NFT Artist

-   `ticker image` - The URL linking to the NFT artwork's image file

-   `Amount of Funds Contributed`

-   `Percentage of Performance Fee`

-   `Distribution title`

-   `Name of the Vault`

-   `Metadata Proposal #`

###

Strategist NFTs[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/life-cycle/nft-generation#strategist-nft)

Benefits:

-   5% (this is the default bonus for strategist)

-   Additional percentage of stablecoin value contributed, based on contribution to vault funding amount

Specific fields:

-   `Strategist_address` - Address of first owner

-   `edition_total` - defined by amount deposited

###

Booster NFTs[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/life-cycle/nft-generation#booster-nfts)

Benefits:

-   Unique Image

-   Individual Booster NFT based on 67% minus the Strategist NFT %

Specific fields:

-   `Booster_address` - Address of first owner

-   `edition_total` - Defined by amount deposited by the strategist

###

Treasury NFTs[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/life-cycle/nft-generation#yfd-treasury-nfts)

Benefits:

-   Unique Image - 33 NFTs that each have 1% distribution rights

-   Special mark on NFT to denote treasury origin, i.e. gold border, seal/badge

Specific fields:

-   `Treasury_address` - Address of the Treasury

-   `edition_total`