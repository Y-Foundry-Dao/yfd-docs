---
layout: default
title: useContractYFD
grand_parent: ⚛️ Frontend
parent: 🪝 Hooks
has_toc: false
has_children: false
nav_order: 2
---

MVP
{: .label .label-purple}
# useContractYFD

useContractYFD is a custom hook that uses the YFD smart contract to perform useful functions on it and return values needed for our components

## Import

```js
import useContractYFD from 'hooks/useContractYFD';
```

## Parameters

`none`

## Return Value

| Name         | Description                                         |
|:-------------|:----------------------------------------------------|
| tokenBalance | YFD Token Balance of the currently connected wallet |

## Usage

### tokenBalance

tokenBalance just uses our queryMsg under the hood to query for the connected wallets YFD balance

```js
const { tokenBalance } = useContractYFD();
```

tokenBalance is given in `micro-units`. This is a convention of the blockchain and when we query coin values from smart contracts we need to multiply them by 10<sup>6</sup>. We use a utility function called convertFromBase which takes the micro-units and converts them to standard currency units. In practice this is how tokenBalance looks when used.

```js
import useContractYFD from 'hooks/useContractYFD';
import convertFromBase from 'utilities/converters/convertFromBase';

function BalanceYFD() {
  const { tokenBalance } = useContractYFD();

  return (
    <>Balance YFD: {convertFromBase(Number(tokenBalance)).toFixed(5)}</>
  );
}

export default BalanceYFD;
```