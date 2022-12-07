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

The proposer and Boosters vote to release the final payment (if applicable) and mint the Booster NFTs.

A final vote is called by the proposer and Boosters through the proposal contract to instantiate the vault. The proposer and Boosters use the code_id to guarantee the validity of the contracts to the DAO for deployment on the Y-Foundry Forge.

***

1. Developer uploads contracts 
	- Executes a Deployment Approval vote in the Vault Proposal Contract
		- provides Code_id of uploaded contract
	- Strategist and Boosters review code and perform any testing / verification
	- Strategists and Boosters vote to affirm the code is functional and satisfactory

1. Affirmative Vote from Strategist and Boosters initiates a Boule Contract Instantiation Proposal
	- to instantiate the uploaded contracts via the Forge

1. Hash of Uploaded Contract and Github repository are compared

1. Auditors sign off that Contract Uploaded matches Github Repository

1. Affirmative vote launches contract under Forge control on the network



MVP
{: .label .label-blue }

* Deployment proposal submitted by Boule
	* Deployment proposal approval

