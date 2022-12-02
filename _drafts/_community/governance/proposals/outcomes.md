---
layout: default
title: Outcomes
parent: Proposals
grand_parent: Governance
nav_order: 20
---

Outcomes
========

### Types

Outcomes are what follow the Voting session. This means tokens deposited into the contract are signaling one of the following resolves for the proposal:

-   YES Affirmative action as defined by the proposal.

-   Abstain No action.

-   No No action.

-   No with Penalty

    -   Vault proposal Withdraw the proposer's stablecoin and fYFD equivalent of locked YFD collateral from the vault proposal contract and the Forge to YFD Treasury Contract.

    -   Governance proposal

        Withdraw the proposer's fYFD equivalent of locked YFD collateral from the governance proposal contract and the Forge to YFD Treasury Contract.

    -   EMERGENCY PROPOSAL Withdraw the proposer's fYFD equivalent of locked YFD collateral from the emergency proposal contract and the Forge to YFD Treasury Contract.

Withdraw the proposer's stablecoin and fYFD equivalent of locked YFD collateral from the vault proposal contract and the Forge to YFD Treasury Contract. Governance proposal Withdraw the proposer's fYFD equivalent of locked YFD collateral from the governance proposal contract and the Forge to YFD Treasury Contract. EMERGENCY PROPOSAL Withdraw the proposer's fYFD equivalent of locked YFD collateral from the emergency proposal contract and the Forge to YFD Treasury Contract.

{: .note }
> Amount of YFD to be withdrawn is:
> 
> Minimum Amount divided by the User's Total fYFD and multiplied by his Total Locked $YFD.

### Requirements

In order for any outcome to be enacted, there is a set of conditions that need to be met. Below you will find the requirements for both Approval and Rejection outcomes.

#### Approval

A proposal vote outcome achieves quorum --- as a percentage of all outstanding votes if:

-   Largest vote proportion is YES / Affirmative.

-   All requirements are met.

-   The voting period has ended.

-   Funding requirement has been reached (when applicable).

Emergency proposals have a series of special exemptions, as defined below:

-   Do not require the voting period to have ended to execute the proposal.

-   Emergency proposals with Affirmative majority and Quorum can be executed immediately.

-   Do not count towards the Active Proposal Maximum for an individual.

-   Do not require the Proposal Submission Cooldown Period for an individual to be exceeded.

{: .note }
> For Emergency proposals, there is an additional "YES (penalize original proposer)" voting option to penalize the proposer of the proposal being canceled. This penalizes the creator of the proposal being canceled, in the event where the original proposal is seen as submitted maliciously or in bad faith against the fYFD holders.

#### Rejection

Any ONE of the following criteria being true means the proposal is to be rejected at voting period expiry of the respective proposal type:

-   Quorum requirement not met .

-   Majority of votes cast are No and/or No with Veto.