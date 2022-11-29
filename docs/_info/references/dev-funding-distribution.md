---
layout: default
title: Dev Funding Distribution
parent: References
nav_order: 50
has_children: false
has_toc: false
---

Dev Funding Distribution
========================

### Current implementation[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/dev-funding-distribution#current-implementation)

Sprint 5 MVP: Initial Payment And 1, 2, or 3 Funds free up automatically at block milestones, no vote required.

SPRINT 7 brings the following QoL enhancements:

-   Initial Payment (optional) - This is the initial amount that gets paid to developers following the passing of the proposal to kickstart development. The amount of this initial payment is limited to the amount of stablecoins contributed by the Strategist. Booster funds do not make up any of this initial payment.

-   Funding Distribution - Payments that are released upon the completion of development milestones, which are approved by the Boosters and Strategist during the initial proposal approval process.

-   Milestone Quantity - Determine the amount of milestones for each vault proposal during proposal stage (e.g. This project will have 3 milestones: completion of the initial proof of concept, followed by testnet deployment, then finally production testing and release of the final code).

### Milestones[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/dev-funding-distribution#milestones)

Each milestone has the following:

-   Target Block for Funding Distribution - Designate block # based targets for milestones, after which vote tokens are distributed. (e.g. Block 114000 for Milestone 1, Block 15200 for Milestone 2, Block 21000 for Milestone 3).

-   Fund Quantity to Distribute Percentage of Funds - it can be determined by contract

-   Voting - Once block # target is reached, anyone can call the distribution function to distribute vote tokens so that voting to disburse the milestone payment can be initiated. Only the Boosters and the Strategist receive vote tokens. Individual voting power is determined by proportion of funds deposited. Once votes are distributed, anyone can initiate a vote and the remaining votes will be need to be submitted within the vault proposal funding distribution voting period length.

-   The minimum quorum is determined by vault proposal funding distribution voting quorum governance parameter in proposal If the vote does not meet quorum/fails it can be resubmitted immediately to distribute new votes for the same payment (provided it is not resolved).

### Resolved status[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/dev-funding-distribution#resolved-status)

On Resolved Funding Distribution, in the proposal contract, when voting is completed and funds are distributed, the following take place:

-   Store transaction ID

-   Record of payment vote and distribution

These steps assure us there is a forensic-friendly trail of payments.

Vote information that is visible:

-   Result

-   Amount

-   Timestamp of payment

-   Address