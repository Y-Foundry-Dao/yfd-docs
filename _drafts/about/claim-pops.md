---
layout: default
title: 🛅 Claim Contract (“POPS”)
nav_order: 10
parent: About Y-Foundry
has_children: false
last_modified_date: 2022-10-25
---

🛅Claim Contract (“POPS”) - Sprint 7/8

Overview
dispersing funds from an active protocol (claim contract) to an NFT or wallet

The C;laim Contract does not allow execution with a variable to determine WHERE to send assets.  The contract uses itself as a source of truth as to the assets and  not outside sources.  The transfer / send address must be the owner of the assets as determined by the claim contract’s internal records.

Note: POPS = Permissionless Onchain Postal System

ASSETS CAN ONLY BE CLAIMED ONCE!  No multiple withdrawals in a single transaction

Vault Does Disbursement
Minimum Disbursement amount
Disbursement is divided by

👮🏽‍♀️Escrow (“POPDrop”)
A sender / source address can deposit assets into the claim contract with an target address that can claim the deposited funds.  Funds may also be split to be claimed between multiple target addresses in addition to the sender being able to define a claimable block and a return to sender / clawback block.
📨Send

Values:
[Asset Sent to Contract with escrow call]
Claimer address (target)
Unlock Block
Block assets can be claimed by Claimer
Default Value: current block
Return Block
Block assets can be reclaimed by Sender
Default Value: two weeks worth of blocks in the future
	
Note:  Unlock Block and Return Block can be set to any positive numeric which can be a block in the future or the value could be the current block, or ZERO, or a block in the past which would permit the assets to be claimed or reclaimed immediately.

For fragmented distribution #2 Claimer address (target) can be a data array
	{distribution array = 
[target address] => [amount of #1 asset, unlock block, return block]]
[target address2] => [amount of #1 asset, unlock block, return block]
	}

On a multi-target send  the Unlock Block and Return blocks can be set at the individual target portion or can be assigned globally to all as in value #3 and #4

📬Receive
Single
Request to claim a specific asset or vault claims assigned to the requestor’s address

All
		Request any unclaimed assets assigned to the requestor’s address

↪️Reclaim
Single
Request to reclaim a specific asset or vault claims sent from the requestor’s address

All
Request any assets available to be reclaimed that were sent from the requestor’s address
		

📑Disbursement Reporting
User Report
		Eventually this will form the basis of tax reporting
 Report for disbursement status of a single address
P/E ratio
Can be analyzed by DCF model or other valuation models
Can be used for yield redirection
P payment was made on D date to UUID_NFT output
P payment was made on D date to wallet address output
Vault Report
		Report for disbursement status and output of a value contract

Sender Report
		Report for funds received from a single address
			Treasury is the most likely thing to be used here
