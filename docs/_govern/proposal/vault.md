---
layout: default
title: 🔒 Vault
nav_order: 20
parent: Proposals
has_children: false
last_modified_date: 2022-10-27
---

WIP
{: .label .label-blue}

# 🏗️Vault Creation & Funding

## Overview
> These details are supplied by the strategist when submitting a vault proposal to governance for approval.  
>
> A successful submission of the Vault Creation proposal instantiates a unique instance of the Vault Proposal Contract.



### Actions of the Proposal

1. Voting

1. Funding

1. Deployment Proposal / Approval


## Technical Details

* Vault Name
    The name with which the created vault will be referred to.
* Text string
    40 characters or less, including letters, numbers, symbols and special characters: e.g. Hedge+
* Vault Ticker
    Short abbreviation / ticker for the Vault - like an exchange ticker
    Must be unique value among all vault - active and in process
* Strategy Proposal URL
    Text field linking to IPFS or URL to proposal pdf 
* Strategy TVL Minimum ( in USD )
    TVL Minimum must be greater or equal to Vault Proposal TVL Minimum
    Limit / requirement modifiable by a governance vote
* Developer’s Payment Wallet Address
    Payment address of the developer.
    Must match an entry in Whitelist
    Entry type must be Developer
* Developer Funding Requirement
    The amount of funds to develop the vault  based on sprints needed and statement of work from the associated developer.
    An integer representing USD value in stablecoin, greater than the minimum value and less than the maximum : e.g. $80,000.
    Initial Minimum value: $5,000.
    Can be changed by Vault Proposal Developer Funding Minimum.governance parameter.
    Initial Maximum value: $1,000,000.
    Can be changed by Vault Proposal Developer Funding Maximum.governance parameter.
* Developer Proposal URL
    Text field linking to IPFS or URL to Statement of Work / Sprint Details
* Developer Initial Up-Front Payment (optional)
    Default is  $0
    Maximum is limited to the Proposer’s portion of funding
* Developer Payment Distribution Schedule 
    How many payments to be made
* Developer Payment Frequency 
    How frequently payments are to be made
    Represented in Blocks
* Github for Vault Contracts
    Must be live before proposal, human check only
    Repo resides in Y-Foundry DAO github account
* Strategist / Proposal Contribution
    Minimum: 5% of total Development Funding Requested
    Proposer can fund up to 100% of Developer Funding Requirements
    100% funding = Self-funded and no booster funds are requested / permitted

### Requirement:
> To self-fund, the strategist must possess sufficient fYFD to meet the fYFD proposal funding requirements


### Immutable Values to Store:
> ALL governance parameters referenced by the proposal must be captured and stored in the contract at the time of instantiation

* Current market $YFD price
* Current multiplier for $YFD to fYFD
* Amount of blocks remaining to unlock block for the proposer’s YFD
* Current Ratio for fYFD to YFD stablecoin funding
* Use current parameter value defined by YFD governance
    In Forge Contract? 
* Proposer Wallet Address
* Stored from connected wallet of Proposer / submission
* Must have entry in Strategist developer list
* Create on submission would be acceptable - or separate function/process
* Vault Proposal Funding Distribution Voting Period Length
* Vault Proposal Funding Distribution Voting Quorum