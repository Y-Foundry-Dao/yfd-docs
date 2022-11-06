---
layout: default
title: ↩️Cancelation
nav_order: 5
parent: 🚑 Emergency
grand_parent: Proposals
has_children: false
last_modified_date: 2022-11-05
---

WIP
{: .label .label-blue}


# ↩️Cancelation

{: .warning } 
> EMERGENCY GOVERNANCE ACTION

Used to stop action and liquidate assets from a vault proposal that has already been approved.
Initiates the Cancel function of a proposal with funds.
Activated by Boule vote
Proportionate amount of funds in the proposal contract are made claimable for Boosters and (optionally the) Strategist
Booster funds:
Claimable in the proposal “claim_stake”
Strategist funds:
Choose:
Send to DAO Treasury Contract address
Claimable by the Proposer Address in Claim Contract

Send Vault Proposer Minimum Stablecoin Deposit to DAO Treasury Contract AND allow the fund amount greater than Vault Proposer Minimum Stablecoin Deposit to Proposer Address to be claimable.

## ↩️Cancelation Outcome
Liquidates funding assets from an active vault proposal after voting approval.
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

Use case: This can be used if proposal governance in non-responsive or strategist / developer disappears, or something else is wrong with a proposal that has accepted booster/treasury funds.
