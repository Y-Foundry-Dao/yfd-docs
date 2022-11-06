---
layout: default
title: 👎🏽 Veto
nav_order: 8
parent: 🚑 Emergency
grand_parent: Proposals
has_children: false
last_modified_date: 2022-11-05
---

WIP
{: .label .label-blue}

# 👎🏽 Veto


{: .warning } 
> EMERGENCY GOVERNANCE ACTION

{: .important-title }
> REQUIREMENTS
>
> The following Governance Parameters to be applied:
> * Emergency Proposal Quorum
> * Emergency Proposal Voting Period Length
> * fYFD Minimum Amount for Emergency Proposal

A proposal which initiates the Veto action of an existing active proposal that is still pending a vote outcome.

{: .important-title }
> EXAMPLE
>
> Veto Proposal #123 which sends funds to a mistyped address.
> 
> Any funds already in the contract when the veto has passed should follow the reclamation method detailed in the Cancelation function.

## Outcomes

### Passed

See Govern -> Participate -> Outcome doc


###
🤔Vault Proposals

## 👎🏽Veto
The action response to the Forge Veto governance proposal passing.

Liquidates funding assets from an active vault proposal before or during voting approval.
Activated by Boule vote
Proportionate amount of funds in the proposal contract are made claimable for Boosters and (optionally the) Strategist
Booster funds:
Claimable in the proposal
(optional method) Sweep funds to Claim contract for Boosters to claim
Strategist funds:
Choose:
Send to DAO Treasury Contract address
Claimable by the Proposer Address in Claim Contract

Send Vault Proposer Minimum Stablecoin Deposit to DAO Treasury Contract AND allow the fund amount greater than Vault Proposer Minimum Stablecoin Deposit to Proposer Address to be claimable

Create a proposal which initiates an emergency action i.e. emergency liquidation of funds from Proposal XYZ, exit and return all Booster funds to the claim contract where users can claim their funds.
For proposals that accept funds (e.g. Vault proposals)

