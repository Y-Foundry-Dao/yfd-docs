---
layout: default
title: ⚡ Proposals
nav_order: 6
parent: 🏛️ Govern
has_children: true
last_modified_date: 2022-10-25
---

WIP
{: .label .label-blue}


# ⚡Governance Proposal Instantiation

{: .important-title .blue}
> **PURPOSE**
>
> Utilizes the Forge contract to instantiate a Proposal from the Proposal Template Contract.  Stores the record of the instantiation in the Forge’s proposal registry.

## Eligibility Requirement
Proposer must meet or exceed the fYFD Minimum Amount for the respective type of Proposal.
The proposer must have locked enough $YFD to meet or exceed the requirement to be eligible to submit proposals for the specified proposal type.
Initial values are set as:
* Governance proposal minimum.
* Vault proposal minimum
* Emergency proposal minimum

## fYFD Locking During Proposal Duration 
When a proposal is submitted the portion of the proposer’s fYFD equivalent to the amount required to submit a proposal is “locked” for the duration of the submission process. The “fYFD” used to submit the proposal maintains a “locked” status until the associated proposal status changes at the completion voting period and is defined as either accepted or rejected.  

Locked fYFD means the fYFD and $YFD equivalent are unavailable for:
* Withdrawal to $YFD
* Meeting the fYFD submission requirements of additional proposals.

When the voting period is complete the fYFD locked for the proposal:
* On a No with Veto an amount of $YFD equivalent to the fYFD locked for the proposal  is sent to the { TREASURY ADDRESS }
* On an Affirmative or standard No vote outcome is unlocked and available to the proposer to withdraw or use again on another proposal

Submission would not exceed the Active Proposal Maximum for an individual.

Footnote
{: .label .label-yellow}

Any proposal from the same proposer that is active or pending action counts towards this limit as defined in the Governance Parameter..
Must exceed the Proposal Submission Cooldown Period for an individual4.
The amount of blocks since the last active proposal from the proposer must exceed the Proposal Submission Cooldown Period for an Individual before they are allowed to submit a proposal.
Acceptance Requirement
Mandatory proposal fields are filled and validated
Parameters defined by each proposal type are required for a proposal to be accepted by the contract when submitted by a Proposer.
