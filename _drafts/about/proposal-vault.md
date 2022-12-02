---
layout: default
title: 🗳 Vault proposals
nav_order: 5
parent: About Y-Foundry
has_children: false
last_modified_date: 2022-10-25
---

# 🗳 Vault proposals

Vault Proposals are how strategists turn their strategy ideas 💡 into live on-chain vaults.

![Five Ingredients of a YFD Vault](/assets/images/learn/about/five-ingredients-of-a-yfd-vault.png)

## Steps:

1. To create a vault proposal, a strategist must first have sufficient fYFD.
[insert note about how to lock YFD, and how many YFD is required]
2. Next, a strategist must fill in a strategy prospectus document (link to strategy prospectus). It's okay if they don't have all the answers at first. A strategist can work with the community (in discord) to receive helpful feedback that will help clarify their proposal over time.
3. A strategist must also secure a developer. They can use the vault prospectus as a starting point for discussions with whitelisted developers (link to guide for whitelisting) in the YFD community and find someone willing and able to take on the work required. We'll include a guide on how to do this (link to guide later).
4. Once a developer has been attached to the project, and a bid amount agreed upon, the strategist can finalize the prospectus document with the details of the developer, milestones, developer's fee, and deliverables.
5. When the strategist is ready, they can use the YFD website to create a new vault proposal (screenshots to be added), and fill in the requisite information. The strategist must also be able to commit at least 5% of the funding requirement that is asked in the proposal. 
    1. List of items.
    2. List of items.
    3. List of items
6. Once the proposal has bene submitted, it will be subject to community approval. Boosters will evaluate the proposal based on its merits and commit funds or decline to do so. All boule members will receive vote tokens and be able to cast their vote on the proposal of YES, NO, NO with VETO, or ABSTAIN. A proposal must receive more than 51% YES votes in order to be approved.
7. A proposal that receives the required YES votes from fYFD holders, as well as fulfills its funding requirement is then ready for development. Funds committed by boosters will be held in the smart contract, ready to be disbursed. 
8. The initial payment will come from the portion of funds committed by the strategist. This is to prevent collusion between the strategist and developer in order to steal community funds. In order for further payment to happen, the developer must first deliver at least 1 milestone.
9. At each milestone block (as determined in the proposal), the boosters and strategist will be able to vote to release or not release a portion of funds to the developers. There is no established guideline for now ((self-note to write a guide on evaluating milestone deliverables)), but in general if the developers are delivering their work as promised, the boosters and strategist should vote to approve the payments.
10. The option to not pay the developer should only be excercised if the developer becomes unreachable, or inactive, and has not delivered any work since the previous reached milestone.
11. If all milestones have been succcessfully reached, then the vault code should be ready for audit and deployment. The Boule may choose to perform a peer-audit, which is by far the more economical and reasonable method of auditing contract code. The community could also opt to pay for an auditing firm to audit the code, which will likely drive up development costs by several tens of thousands.
12. Once auditing is complete, the Boule may receive and verify the final code for deployment is complete and accurate to the specifications of the original proposal.
13. The Boule can then raise a vault deployment proposal (note to add color and link to section) which will finally deploy the code into a contract onchain with the Forge as the owner of the contract.
14. The vault is now live and ready to be interacted by users!


![Vault Proposal Process](/assets/images/learn/about/proposal-vault.png)

* Individual vault proposals can accept funds in stablecoins from users with fYFD points.
Once fully funded, a vault proposal issues Booster NFTs to users who contributed funds, as well as the proposer.

* Funds can only be disbursed to the pre-whitelisted developer specified in the proposal.
Vault proposals will escrow development funds to the developer, to be claimed on a block-based milestone basis.

