---
layout: default
title: The Forge
nav_order: 20
has_children: false
---

The Forge
=========

The Forge is the [Governance](/community/governance) part of the project. What this means is that users can take their $YFD tokens and deposit them in the Forge, thus acquiring fYFD points.

![](/assets/images/figure/forge.png)

The way fYFD points work is explained below:

-   1.

    A user has $YFD tokens.

-   2.

    The tokens get deposited in the Forge, via Smart Contract call, with a target block number (as the date/time). That block marks the time the final fractional $YFD gets reclaimed. They get issued fYFD points.

-   3.

    fYFD points can be used to:

    -   Submit governance [Proposals](/community/governance/proposals);

    -   Fund any proposal (eg. 1 point = $0.01 of funding capacity).

-   4.

    Points decay each block.

-   5.

    The user can reclaim the decayed fYFD as $YFD.

{: .note }
> Submitting a proposal locks fYFD points. These points stop decaying until the proposal process has been completed. This allows community to penalize bad actors (points can be seized).

Users with enough fYFD points can create the following [Proposals](/community/governance/proposals):

-   ​[Text proposals  ](/info/references/proposal-categories/basic)(a proposal with no enforceable on-chain action).

-   ​[Spend proposals](/community/governance/proposals/funding) to send funds from the treasury to a pre-whitelisted recipient address (service provider, community contributor, consultant, etc.).

-   ​[Parameter proposals](/info/references/proposal-categories/parameter) to create, modify, or deprecate a governance parameter.

-   ​[Emergency proposals](/info/references/proposal-categories/emergency) to stop/veto an existing vault, governance, or spend proposal etc.

-   ​[Vault proposals](/info/references/proposal-categories/vault) to create a new vault, essentially a community-funded work order that can be fulfilled by a developer to receive escrowed funds.

-   ​[Vault deployment proposal](/info/references/proposal-categories/vault) to deploy the code for a completed vault (making the forge the owner of that contract).

-   ​[Whitelist proposals](/info/references/proposal-categories/whitelist) to whitelist developers and their wallet addresses to be able to work on vault proposals and receive payment.

You can read more about the governance process by heading over to [Governance](/community/governance).

You can read detailed specific of each proposal by heading over to [Proposal Categories](/info/references/proposal-categories)