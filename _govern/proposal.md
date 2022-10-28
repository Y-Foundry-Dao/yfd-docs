---
layout: default
title: Proposals
nav_order: 4
has_children: true
last_modified_date: 2022-10-27
---

# ⚡Proposals

WIP
{: .label .label-blue}

## 🔒 Governance Proposal Instantiation

{: .important-title .blue}
> **PURPOSE**
>
> Utilizes the Forge contract to instantiate a Proposal from the Proposal Template Contract.  Stores the record of the instantiation in the Forge’s proposal registry.


## Proposals

Proposals are Instantiated in the Forge

### Proposal Types
#### Governance


| Name        | Type | fYFD Minimum to Propose |
|:-------------|:------------------|:---------|
| Text     | DAO   | 25,000 |
| Spend (Treasury)     | DAO   | 25,000 |
| Whitelist Developer     | DAO  | 25,000 |
| Whitelist Token     | DAO  | 25,000 |
| Vault Creation     | Strategy  | 25,000 |
| Vault Deployment    | Strategy  | 25,000 |
| Veto      | Emergency | 250,000 |
| Cancel Proposal     | Emergency | 250,000 |

### Standard Proposal Eligibility Requirement

{: .gov-title }
> Proposal fYFD Minimum 
>
> Minimum amount of fYFD required to submit an Standard Proposal is currently set to:
> 25,000 fYFD Points
>
> This value can be changed by DAO governance.

Proposer must meet or exceed the fYFD Minimum Amount for the respective type of Proposal.
The proposer must have locked enough $YFD to meet or exceed the requirement to be eligible to submit proposals for the specified proposal type.
Initial values are set as:
* Governance proposal minimum.
* Vault proposal minimum
* Emergency proposal minimum

### Emergency Proposal Eligibility Requirement
<div class="code-example" markdown="1">
Proposer must meet or exceed the fYFD Minimum Amount for an Emergency Proposal.

The proposer must have locked enough $YFD to meet or exceed the requirement to be eligible to submit an Emergency Proposal.

{: .gov-title }
> Emergency Proposal fYFD Minimum 
>
> Minimum amount of fYFD required to submit an Emergency Proposal is currently set to:
> 250,000 fYFD Points
>
> This value can be changed by DAO governance.
</div>



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
