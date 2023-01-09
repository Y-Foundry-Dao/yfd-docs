---
layout: default
title: getValues
parent: ⛅ Functions
grand_parent: dApp Frontend
has_children: false
has_toc: false
nav_order: 10
last_modified_date: 2023-01-07
---

WIP
{: .label .label-blue}
# getValues

`getValues` contains functions that return a stringified value or array from dApp's configuration files and parameters.

## Functions

### getChainDeploy
    Returns the chain deployment configuration for the specified chain ID.

**Arguments**

| Argument | Type | Description |
| :--- | :--- | :--- |
| `chainID` | `string` | The chain ID to return the chain deployment configuration for |
| `parameter` | `string` | The parameter to return the value for |

**Parameter Options**

| Parameter | Type | Description |
| :--- | :--- | :--- |
| `name` | `string` | The Network Name |
| `lcd` | `string` | The LCD URL |
| `forge` | `string` | The forge contract address |
| `token` | `string` | The governance token ($YFD) contract address |

## Import

`import getChainDeploy from '@utilities/getValues';`

## Parameters


## Return Value


## Usage
```js
  const tokenContract = getChainDeploy(chainID, 'token');
```