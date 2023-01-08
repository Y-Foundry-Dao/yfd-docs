---
layout: default
title: useChainInfo
parent: 🪝 Hooks
grand_parent: dApp
has_children: false
has_toc: false
nav_order: 10
last_modified_date: 2023-01-07
---

WIP
{: .label .label-blue}
# useChainInfo

useChainInfo is a custom hook that returns useful info about the chain we are connected to (e.g. current chain ID, current block height).
Items returned are also set to Recoil State.

## Import

`import useChainInfo from '@hooks/useChainInfo';`

## Parameters

_None_

## Return Value

`currentChainID` - The current chain ID
`currentBlockHeight` - The current block height

## Usage
```js
    const chainID = useChainInfo().currentChainID;
    const blockHeight = useChainInfo().currentBlockHeight;
```

## Recoil Example

```js
    const chainID = useRecoilValue(currentChainIDState);
    const blockHeight = useRecoilValue(currentBlockHeightState);
```
