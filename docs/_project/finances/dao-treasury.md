---
layout: default
title: DAO Treasury
parent: Finances
nav_order: 20
has_children: false
---

DAO Treasury
============

The MVP treasury is a multi-signature wallet. Multiple private keys held by members of the community are required to authorize any treasury spend transactions. This process uses the unique Treasury Spend Proposal mechanism of YFD.

For more information on this, please read [Proposals]().

### Security

When it comes to Treasury  funds, YFD imposes proven methods of mitigating risk:

-   Divided ownership - allows smart contract verification of usage;

-   Separation of duties - fraud and mistakes are a lot less likely;

-   Audit trail - allows knowing who executed the action.

Another feature the DAO uses is a multi-signature wallet. This is a smart contract that require the agreement of multiple people (signers) to perform an action. This is useful for protecting assets (through separation of duties) and helps ensure that certain actions are only taken in accordance with the wishes of the wallet's owner or the majority of owners.

YFD will use a 5/9  multi-signature wallet.

Signers:


| Signer        | Wallet Address          |
|:-------------|:------------------|
| Signer 1 |    |
| Signer 2 |    |
| Signer 3 |    |
| Signer 4 |    |
| Signer 5 |    |
| Signer 6 |    |
| Signer 7 |    |
| Signer 8 |    |
| Signer 9 |    |


### Treasury Contract

The Treasury will be managed by exclusively by on-chain governance proposals submitted via [The Forge]().

More information about wallets will be released soon after TGE.

![](/assets/images/figure/coming-soon.png)

In MVP the Treasury Contract is substituted for an on-chain multi-signature wallet.

Actions will be initiated by a vote of 5 out of 9