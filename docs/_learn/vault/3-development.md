---
layout: default
title: 💻 Development
nav_order: 15
parent: Vault Lifecycles
has_children: false
last_modified_date: 2022-10-25
---

# 💻 Development Process 
_(post-approval)_

### Development begins
* Initial payment (if any) is claimable by developer

### Milestones
* Remainder of payments become claimable as milestone blocks reached
* Oversight by boosters/crucibles to ensure milestones are met
* Voting may be required to release the additional payments

### Development conclusion
* Submission of finalized code by developers for review
* Code review
    * Dev. Crucible
    * External parties (e.g. audits)
* Code accepted by Boule

### Work is completed
* Final payment claimable by developers

# 👩🏽‍💻Developer Funding Distribution

How it works now - Sprint 5 MVP:
		Initial Payment
			And 1, 2, or 3
	Funds free up automatically at block milestones, no vote required
			

***


🔆SPRINT 7 enhancements
Initial Payment (optional) — This is the initial amount that gets paid to developers following the passing of the proposal to kickstart development.
The amount of this initial payment is limited to the amount of stablecoins contributed by the Strategist.
Booster funds do not make up any of this initial payment.

Funding Distribution — Payments that are released upon the completion of development milestones, which are approved by the boosters and strategist during the initial proposal approval process.
Milestone Quantity: Determine the amount of milestones for each vault proposal during proposal stage (e.g. This project will have 3 milestones: completion of the initial proof of concept, followed by testnet deployment, then finally production testing and release of the final code).
FOR EACH MILESTONE
Target Block for Funding Distribution: Designate block # based targets for milestones, after which vote tokens are distributed. (e.g. Block 114000 for Milestone 1, Block 15200 for Milestone 2, Block 21000 for Milestone 3 )
Fund Quantity to Distribute
Percentage (positive) of Funds
Maybe we don’t need this - it can be determined by contract
VOTING: Once block # target is reached, anyone can call the distribution function to distribute vote tokens so that voting to disburse the milestone payment can be initiated.
Only the boosters and the proposer receive vote tokens
Individual voting power is determined by proportion of funds deposited
Once votes are distributed, anyone can initiate a vote and the remaining votes will be need to be submitted within the vault proposal funding distribution voting period length
The minimum quorum is determined by vault proposal funding distribution voting quorum governance parameter in proposal
If the vote does not meet quorum/fails it can be resubmitted immediately to distribute new votes for the same payment (provided it is not resolved)
ON RESOLVED FUNDING DISTRIBUTION:
In the proposal contract when voting is completed and funds are distributed
Store transaction id and record of payment vote and distribution to have a forensic-friendly trail of payments.
Note: Results of the vote are shown, as well as amount, timestamp of payment, address, and description of the milestone.

***


WIP
{: .label .label-blue }
