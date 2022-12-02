---
layout: default
title: Voting
parent: Governance
nav_order: 30
has_children: false
has_toc: false
---

Voting
======

### Quorum

$YFD unlocks due to fYFD points decaying each block. This means that inactive users slowly lose goverance power. At the same time, active users that reclaim and relock $YFD stand to gain an increased proportion of governance power over time which should, in theory, reduce the threshold to reach quorum.

![](/assets/images/figure/voting.png)

### fYFD Points

Voting requires a user hold fYFD Points. These points are assigned to any address that deposits $YFD tokens into the Forge contract. The quantity of these fYFD points is calculated based on a multiplier that is derrived from the amount of blocks between the time of deposit and the final 'unlock block' chosen by the $YFD token depositor.

| Unlock Block Time        | $YFD to fYFD multiplier          | fYFD to $YFD value parity (+/-) |
|:-------------|:------------------|:------|
| **2 week (min)**  | **0.048**  | **-95.20%**  |
| 3 month       | 0.3125 | -68.75%  |
| 6 month       | 0.625  | -37.50%  |
| 9 month       | 0.9375 | -06.25%  |
| 1 year        | 1.25   | +25.00%  |
| 1.5 year      | 1.875  | +87.50%  |
| **2 year (max)**| **2.5**    | **+150.00%** |

Chronological values above are shown to help illustrate the locking period and as an example they assume a time of 6 seconds per block. In the Forge Contract the unlock block value is stored as a block height.

This means that block time will alter the exact time and date of the unlock.

$YFD deposited into [The Forge]() is unavailable for withdrawal until the Unlock Block selected at the time of deposit is made. An unlock block must be set to deposit $YFD into the Forge. The DAO can change the unlock block minimum and maximums.

Currently the minimum unlock block is the equivalent of two weeks worth of blocks. The reason for requiring an unlock block is to stabilize governance and reduce attack vectors directed at governance manipulation.

### Deposits

There is no hard limit on $YFD deposits into the Forge. Each deposit of $YFD tokens maintains its own unlock block and thereby its own fYFD points multiplier.

The DAO may set a minimum amount of $YFD accepted as a deposit into the Forge contract.

As each block is created on-chain, the unlock block grows closer to being reached and at the same time, $YFD unlocks from the Forge and becomes available to withdraw.