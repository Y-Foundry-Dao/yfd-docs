---
layout: default
title: 📡 Deployment
nav_order: 20
parent: Creating Vaults
has_children: false
last_modified_date: 2022-10-25
---

# 📡 Deployment Process
_(post-development)_

***

Now that the development has been finalized, the developer uploads the contract to the blockchain and receives a code_id back from the blockchain. Using the code_id(s), responsible parties (proposer, Boosters, auditors, the DAO) check the code to confirm that the uploaded contracts on the blockchain correspond to the code in github. 

The proposer and Boosters vote to release the final payment (if applicable) and mint the [Booster NFTs](../5-vault-nft/).

A final vote is called by the proposer and Boosters through the proposal contract to instantiate the vault. The proposer and Boosters use the code_id to guarantee the validity of the contracts to the DAO for deployment on the Y-Foundry Forge. The Y-Foundry DAO votes to instantiate the contract under the control of the Forge on the Y-Foundry platform. 

<br>

{: .note }
> The DAO has the option to not instantiate the contracts on the Y-Foundry platform. This would essentially mean that although the work has been completed and passed through the review process, the DAO ultimately made the decision that the final contract(s) should not be hosted on the Y-Foundry platform. Unless an unexpected issue arises, any result other than approval at this point would be highly unlikely.

<br>

The vault is now available on the Y-Foundry platform.
