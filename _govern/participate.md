---
layout: default
title: Participate (fYFD)
nav_order: 2
has_children: true
last_modified_date: 2022-10-27
---

# 🔥 How Y-Foundry DAO Governance Works 🔥

WIP
{: .label .label-blue}

### How to Participate in Y-Foundry Governance  

> Participation in governance requires fYFD Points.  

### How to acquire fYFD Points

> fYFD points are assigned to any address that deposits $YFD tokens into the Forge contract

### How the quantity of fYFD Points is determined

> fYFD points are calculated based on a multiplier that is derrived from the amount of block between the time of deposit and the final 'unlock block' chosen by the $YFD token depositor.

| Unlock Block Time        | $YFD to fYFD multiplier          | fYFD to $YFD value parity (+/-) |
|:-------------|:------------------|:------|
| **2 week (min)**  | **0.048**  | **-95.20%**  |
| 3 month       | 0.3125 | -68.75%  |
| 6 month       | 0.625  | -37.50%  |
| 9 month       | 0.9375 | -06.25%  |
| 1 year        | 1.25   | +25.00%  |
| 1.5 year      | 1.875  | +87.50%  |
| **2 year (max)**| **2.5**    | **+150.00%** |

{: .important .label-gray }
> Chronological values above are shown to help illustrate the locking period and for this example are based on the Terra 2 blocktime of 6 seconds per block.  In the Forge Contract, upon deposit of $YFD the unlock block value is stored as a block height, not a chronological value.
> 
> So, for example, if a chain's blocktime changes from 6 seconds per block to 3 seconds per block, the chronological time in which the unlock block would be reached is halved.  If a chain slows and block processing time becomes an average of 12 seconds, the time until deposited $YFD could be unlocked essentially be doubled.

$YFD deposited into the Forge is unavailable for withdrawal by the depositor until the **Unlock Block** selected at the time of deposit is made.

{: .gov-title }
> Minimum Unlock Block Amount
>
> A unlock block must be set to deposit $YFD into the Forge. The DAO can change the unlock block minimum and maximums.  
>
> Currently the minimum unlock block is the equivalent of two weeks worth of blocks.  
> The reason for requiring an unlock block is to stabilize governance and reduce attack vectors directed at governance manipulation.

### How many $YFD deposits are allowed

> There is no hard limit on $YFD deposits into the Forge for each user.  Each deposit of $YFD tokens maintains its own unlock block and thereby its own fYFD points multiplier.

{: .gov-title }
> Deposit Minimum
>
> The DAO may set a minimum amount of $YFD accepted as a deposit into the Forge contract.


### When can deposited $YFD be withdrawn

{: .important }
> fYFD points decay and are converted back into $YFD every block along a linear scale.

As each block is created on-chain the unlock block is closer to being reached and $YFD unlocks from the Forge and becomes available 
to withdraw.

### What can a user do with fYFD points
Users who lock $YFD in the Forge Contract become a member of the Boule.
