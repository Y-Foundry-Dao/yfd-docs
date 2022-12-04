---
layout: default
title: 💻 Development
nav_order: 15
parent: Creating Vaults
has_children: false
last_modified_date: 2022-10-25
---

# 💻 Development Process 
_(post-approval)_

***

Once a project vault has been fully funded and all development milestones have been locked in, development on the project begins.

***

### Development begins
The initial payment (if any) is claimable by the whitelisted builders identified in the proposal.

{: .important }
> The initial payment is limited to the amount contributed by the proposer only. Booster funds are not used for this initial payment. 
>
> If a proposer and developer collude to take advantage of the Boosters, they would only be rugging themselves.


<br>

### Milestones
Specific milestones are detailed in each on-chain proposal. The project vault Boosters, with support from the Y-Foundry DAO, are responsible to ensure that development is progressing as expected according to these milestones. 

At the completion of each milestone, Boosters can vote to release additional funds from the overall escrow. Builders will then be able to claim these funds for continued development. 

If milestones are not met to the satisfaction of the project Boosters, the Boosters have the option to vote to clawback the remaining funds in the vault. In this event, the Boosters will receive a return of the remaining funds proportional to the amount they originally deposited in the vault minus any disbursements for development that has already taken place.

<br>

### Development conclusion
Once the development has been completed, the developers submit the finalized code for review. The Y-Foundry DAO community and relevant third parties audit the code to ensure it is secure and working as intended. Once the audit results are available, the Y-Foundry DAO puts up a final vote to accept the code and launch the project on the Y-Foundry platform.

<br>

{: .note}
> What happens if the DAO votes no? Discussing these details.

<br>

### Work is completed
The final payment is now claimable by the project builders. The project launches on Y-Foundry.

<br>

# 👩🏽‍💻Developer Funding Distribution

How it works now - Sprint 5 MVP:
		Initial Payment
			And 1, 2, or 3
	Funds free up automatically at block milestones, no vote required
			

***


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