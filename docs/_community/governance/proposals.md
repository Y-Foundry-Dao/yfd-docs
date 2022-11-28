---
layout: default
title: Proposals
parent: Governance
nav_order: 10
has_children: true
has_toc: false
---

Proposals
=========

One of the major innovations on YFD is that each proposal and its votes are on their very own contract. When a user submits a proposal, they utilize [The Forge]() contract to instantiate a proposal contract based on the Proposal Template Contract. The proposal will store the record of the instantiation in the Forge's proposal registry for archival purposes, making them auditable.

This method of instantiation also ensures that the resultant proposal remains unchangeable, due to keyless ownership of the proposal contract. It also compartmentalizes smart contract risk, as each proposal runs as its own instance.

### Proposal Types

![](/assets/images/figure/proposal-types.png)

|:------|:--------|:----------|
| Name | Type | Required fYFD |
| Text | DAO | 25,000 |
| Spend | DAO | 25,000 |
| Whitelist | DAO | 25,000 |
| Vault | Strategy | 25,000 |
| Veto | Emergency | 250,000 |
| Cancel | Emergency | 250,000 |

{: .gov }
> Minimum fYFP Required can be changed by DAO Governance.

For a full break-down of each proposal type and what it implies, be sure to check out [Proposal Categories]().

### Requirements

The submission of each proposal type comes with its own fYFD points requirement. These are in place to prevent spamming and to discourage malicious actors from locking or delaying important tasks.

Proposer must meet or exceed the fYFD Minimum Amount for the respective type of Proposal. The Proposer must have locked enough $YFD to meet or exceed the requirement to be eligible to submit proposals for the specified proposal type. Initial values are set as:

-   Governance proposal - 25,000 fYFD

-   Vault proposal - 25,000 fYFD

-   Emergency proposal - 250,000 fYFD

{: .important}
> *fYFD Minimum Amounts are changeable by governance.

### fYFD Locking

When a proposal is submitted, the proposer locks the required amount of fYFD for the duration of the submission process. The fYFD used to submit the proposal maintains a locked status until the status changes and is defined as either accepted or rejected (typically after the voting session).

Locked status means that fYFD and $YFD equivalent are unavailable for:

-   Withdrawal to $YFD;

-   Meeting the fYFD submission requirements of additional proposals.

When the voting period is complete, the fYFD locked for the proposal:

-   On a No  with  Veto, an amount of $YFD equivalent to the fYFD locked for the proposal is sent to the [DAO Treasury]();

-   On an Affirmative or Standard No vote, it is unlocked and available to the Proposer to withdraw or use again on another proposal.

### Limitations

{: .important }
Submissions can not exceed the Active Proposal Maximum for an individual.

Any proposal from the same Proposer that is active or pending counts towards this limit as defined in the Governance Parameter.

Before submitting a new proposal, Proposal Submission Cooldown Period