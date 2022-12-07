---
layout: default
title: 🔒 Retirement
nav_order: 50
parent: Creating Vaults
has_children: false
last_modified_date: 2022-10-25
---

# 🔒 Decommissioning / Retirement
_(end of life)_

***

An emergency "Vault Stop" proposal may be used to retire or decommission a vault. Vault Stop disallows the vault contract from accepting new funds. 

<br>

{: .note }
> Smart contracts don't have authority over other contracts unless this has been predetermined. Vault contracts on the Y-Foundry platform have code to allow a decommissioning process to happen. All relevant vaults on Y-Foundry have standardized requirements to be able to stop the vault and liquidate the vault when necessary. Only the Y-Foundry Forge contract has the authority to execute a vault stop command.
>
> Possible scenarios where this could be useful:
>
> * An exploit has been discovered. This could help mitigate some of the damage while a solution is being explored.
> 
> * An underlying protocol has failed. The Y-Foundry DAO can call a vote to allow users to claim their deposited assets regardless of the state of external protocols.
