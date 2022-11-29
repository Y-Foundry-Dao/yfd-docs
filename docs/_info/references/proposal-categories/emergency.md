---
layout: default
title: Emergency
parent: Proposal Categories
grand_parent: References
nav_order: 100
---

Emergency
=========

These are emergency governance actions !

The Emergency proposals are intended to be used in the following scenarios:

-   1.

    Developers go missing

-   2.

    Wrong address

-   3.

    Other errors

An Emergency Proposal requires 250,000 fYFD Points !

They usually come with a penalty.

There are three Emergency Proposals, each of them detailed below.

###

Cancel[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/emergency#cancel)

This type of Emergency proposal is used to stop activity and liquidate assets from a vault proposal that has already been approved.

####

Use case[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/emergency#use-case)

This can be used if proposal governance in non-responsive or Strategist / Developer disappears, or something else is wrong with a proposal that has accepted Booster/treasury funds.

####

Outcome[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/emergency#outcome)

This proposal will liquidate funding assets from an active vault proposal after voting approval. It is activated by fYFD holders vote and as a result a proportionate amount of funds in the proposal contract are made claimable for Boosters and (optionally the) Strategist.

###

Veto[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/emergency#veto)

This type requires the following Governance Parameters to be applied:

-   Emergency Proposal Quorum

-   Emergency Proposal Voting Period Length

-   fYFD Minimum Amount for Emergency Proposal

####

Use case[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/emergency#use-case-1)

A proposal which initiates the Veto action of an existing active proposal that is still pending a vote outcome.

> Example: Veto Proposal #123 which sends funds to a mistyped address.
>
> Any funds already in the contract when the veto has passed should follow the reclamation method detailed in the Cancelation function.

The action response to the Forge Veto governance proposal passing.

####

Outcome[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/emergency#outcome-1)

Liquidates funding assets from an active vault proposal before or during voting approval. Activated by fYFD holders vote, a proportionate amount of funds in the proposal contract are made claimable for Boosters and (optionally the) Strategist.

###

Migration[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/emergency#migration)

####

STOP[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/emergency#stop)

The action response initiated by The Forge contract when an Emergency Vault Proposal has passed affirmatively.

FOR MVP: Emergency Vault Stop is performed purely in The Forge.

Upon a successful vote the Forge will migrate the Vault Contract with a template that prevents any action against the vault contract or the funds. Another contract can be deployed at a later time to reactive the vault.

####

RESTART[](https://elanu-sheetmaster.gitbook.io/y-foundry/info/references/proposal-categories/emergency#restart)

A governance proposal that, if passed, initiates the upgrade of an existing vault contract with new code.