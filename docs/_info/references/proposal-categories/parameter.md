---
layout: default
title: Parameter
parent: Proposal Categories
grand_parent: References
nav_order: 80
---

Parameter
=========

Parameter proposals affect values stored in governance contracts (Forge, Claim) and new proposals.

Parameters with a status set to 'deprecated' can still be queried but can't be modified.

###

Parameter Types:[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/parameter#parameter-types)

MVP Parameters:

-   uint64

-   uint128

-   decimal

-   percent

v1 Parameters:

-   text

Text type is a work in progress for v1 and not available in MVP at this time.

###

Parameter Fields:[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/parameter#parameter-fields)

-   `Reference Name`

-   `Name`

-   `Description`

-   `Lower Range` (optional)

-   `Value`

-   `Upper Range` (optional)

-   `Status`

    -   Active

    -   Deprecated

###

Modifying and altering[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/parameter#modify-parameter)

Governance parameter fields that allow modifying:

-   `Value`

-   `Status`

Status field allows altering to:

-   `Status`

    -   Active