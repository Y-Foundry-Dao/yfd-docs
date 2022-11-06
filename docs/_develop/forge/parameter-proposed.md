---
layout: default
title: 🌱 Proposed Governance Parameters
nav_order: 10
parent: Forge
has_children: false
last_modified_date: 2022-11-05
---

WIP
{: .label .label-blue}

## 🌱Governance Parameter Defaults

{: .warning }
> This list is the proposed parameters list
>
> The parameters below were not implemented and listed for reference only


$YFD to fYFD Funding Ratio
Description
For determining the ratio of $YFD value for each fYFD that provides the individual’s funding limit for vault proposals (as a Strategist or Booster)
Value
1
Type	
Percentage (Positive)
Notes:  Use case would be to adjust the funding power of lockers if needed, to counter an edge case of over-demand or over-supply of the $YFD token. Lower ratio means more fYFD has to be locked to achieve the same funding power, higher means less.

$YFD Maximum Lock Time
Description
Maximum blocks to be allowed as lock time.
Value
Tbd by chain - two years worth of blocks
Type	
Numeric (Custom) - tbd by chain
Upper Range
Four years worth of blocks
Lower Range
One year worth of blocks

$YFD Minimum Lock Time
Description
Minimum blocks to be allowed as lock time.
Value
Tbd by chain - two weeks worth of block
Type	
Numeric (Custom) - tbd by chain
Upper Range
One year worth of blocks
Lower Range
One week worth of blocks


$YFD to fYFD Locking Block Multiplier
Description
For determining the amount of fYFD to grant a locker of $YFD per $YFD for one block locked. 
Value
TBD by chain block timing
Type	
Numeric (Custom)
Upper Range
0.00005
Lower Range
0.000000000000000001

fYFD Minimum Amount for Vault Proposal 
Description
For determining the minimum fYFD points required for the individual to be able to submit a vault proposal.
Value
25000
fYFD points
Type	
Numeric (Custom)
Upper Range
500000
Lower Range
1

fYFD Minimum Amount for Governance Proposal 
Description
For determining the minimum fYFD points required for the individual to be able to submit a governance proposal.
Value
25000
fYFD points
Type	
Numeric (Custom)
Upper Range
500000
Lower Range
1


fYFD Minimum Amount for Emergency Proposal 
Description
For determining the minimum fYFD points required for the individual to be able to submit an emergency proposal.
Value
250000
fYFD points
Type	
Numeric (Custom)
Upper Range
1000000
Lower Range
1

Majority % for Emergency Proposal 
Description
For determining the amount of YES votes required to pass an emergency proposal.
Value
0.501
Percentage of majority
Type	
Percentage (Custom)
Upper Range
0.8
Lower Range
0.1

Active Proposal Maximum for an Individual
Description
Maximum amount of active proposals allowed simultaneously from an individual during a block
Outside of threshold: reject additional proposals
Value
1
Type	
Numeric (Custom)
Upper Range
5
Lower Range
1

Proposal Submission Cooldown Period for an Individual
Description
Blocks required to have passed since the last active proposal from an individual has been resolved.
Outside of threshold: reject proposal
Value
Tbd by chain - one week worth of blocks
Type	
Numeric (Custom)
Upper Range
Tbd by chain - three months worth of blocks
Lower Range
Tbd by chain - one hour worth of blocks

 Vault Proposer Minimum Stablecoin Deposit 
Description
Minimum amount of Stablecoins required to accept a vault proposal submission 
Represented as a percentage ( 0.05 = 5%) 
Value
0.05
`Type	
Percentage (Positive)


Vault Proposal TVL Minimum
Description
Minimum TVL (in USD) allowed to deposit into a Vault Proposal / Strategy
Value
1000000
`Type	
Type	
Numeric (Positive)

Vault Proposal Developer Funding Maximum
Description
Boundaries of funding requirements for vault proposal developers
Value
1000000
`Type	
Type	
Numeric (Positive)
Vault Proposal Developer Funding Minimum
Description
Boundaries of funding requirements for vault proposal developers
Value
5000
`Type	
Numeric (Positive) 	

Maximum Booster NFT per Proposal
Description
Number of Boosters to Allow to participate in a vault proposal
Value
57
Type	
Numeric (Custom)
Upper Range
1
Lower Range
400

Minimum Value of Individual Booster Contribution 
Description
Minimum amount of Stablecoin required for a booster deposit
This value may be unnecessary with a fixed / equal distribution
Value
150
`Type	
Numeric (Positive)

 Minimum percentage of Development Fee required per Vault Proposal Booster
Description
Minimum percentage of investment required by booster.  Must be greater than #19 (Minimum Value of Individual Booster Contribution)
Value
1%
`Type	
Percentage (Positive)

Maximum percentage of Development Fee permitted per Vault Proposal Booster
Description
Maximum percentage of REMAINING developer fee allowed to be contributed by an individual booster.  Must be greater than #20 (Maximum Value of Individual Booster Contribution)
Value
10%
`Type	
Percentage (Positive)
Claim Contract Distribution Expiration Block Time
Description
Number of Blocks after which to allow claim contract token sender to reclaim (clawback) sent tokens.  Value is in blocks.  
Value
100000
`Type	
Numeric (Positive)

Governance Proposal Quorum
Description
Percentage of votes needed to be cast to meet quorum for a Governance proposal.
Value
0.25
`Type	
Type	
Percentage (Custom)
Upper Range
0.95
Lower Range
0.05
Vault Proposal Quorum
Description
Percentage of votes needed to be cast to meet quorum for a Vault proposal.
Value
0.25
`Type	
Type	
Percentage (Custom)
Upper Range
0.95
Lower Range
0.05
Emergency Proposal Quorum
Description
Percentage of votes needed to be cast to meet quorum for an Emergency proposal.
Value
0.30
`Type	
Type	
Percentage (Custom)
Upper Range
0.95
Lower Range
0.05

Governance Proposal Voting Period Length
Description
Amount of blocks that a governance proposal is considered active for voting, after which it no longer accepts votes.
Value
Tbd - two weeks worth of blocks
`Type	
Numeric (Custom)
Upper Range
Tbd by chain - one month worth of blocks
Lower Range
Tbd by chain - one hour worth of blocks


Vault Proposal Voting Period Length
Description
Amount of blocks that a vault proposal is considered active for voting and funding, after which it no longer accepts votes or funds.
Value
two weeks worth of blocks
`Type	
Numeric (Custom)
Upper Range
Tbd by chain - one month worth of blocks
Lower Range
Tbd by chain - one hour worth of blocks


Emergency Proposal Voting Period Length
Description
Amount of blocks that an emergency proposal is considered active for voting, after which it no longer accepts votes.
Value
One week’s worth of blocks
`Type	
Numeric (Custom)
Upper Range
Tbd by chain - one month worth of blocks
Lower Range
Tbd by chain - one hour worth of blocks


Vault Proposal Funding Distribution Voting Quorum
Description
Percentage of votes needed to be cast to meet quorum to distribute proposal funds
Value
0.30
`Type	
Type	
Percentage (Custom)
Upper Range
0.95
Lower Range
0.05


Vault Proposal Funding Distribution Voting Period Length
Description
Amount of blocks that a vault proposal is considered active for voting
Value
Three days worth of blocks
`Type	
Numeric (Custom)
Upper Range
Tbd by chain - one month worth of blocks
Lower Range
Tbd by chain - one day worth of blocks