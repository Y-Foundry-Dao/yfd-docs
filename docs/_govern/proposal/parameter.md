---
layout: default
title: 📜 Parameter
nav_order: 35
parent: Proposals
has_children: false
last_modified_date: 2022-11-05
---

WIP
{: .label .label-blue}

📜 Governance Parameters

## ➕Add Parameter

### Overview

Parameter proposals affect values stored in governance contracts (Forge, Claim) and new proposals.

Parameters with a status set to ‘deprecated’ can still be queried but can’t be modified.

***

#### Technical Overview

## Parameter Types

MVP
{: .label .label-purple}

* Types
    - [ ] uint64
    - [ ] uint128
    - [ ] decimal
    - [ ] percent

V1
{: .label .label-yellow}

* Types for V1
    - [ ] text 


{: .note }
> Text type is a work in progress for V1 and not available in MVP at this time


## Parameter fields

* Reference Name
* Name
* Description
* Lower Range (optional)
* Value
* Upper Range (optional)
* Status
    - [ ] Active
    - [ ] Deprecated

***

## ♻ Modify Parameter

#### Allow change of governance parameter fields:
* Value 
* Status
    - [ ] Active
    - [ ] Deprecated


***

## 😴Alter Parameter Status
#### Allow change of governance parameter status field to:
* Status
    - [ ] Active
    - [ ] Deprecated
