---
layout: default
title: useContractForge
parent: 🪝 Hooks
has_toc: false
has_children: false
nav_order: 3
---

MVP
{: .label .label-purple}
# useContractForge

useContractForge is a custom hook that uses the forge smart contract to perform useful functions on it and return values needed for our components

## Import

```js
import useContractForge from 'hooks/useContractForge';
```

## Parameters

`none`

## Return Value

| Name         | Description                                          |
|:-------------|:-----------------------------------------------------|
| tokenBalance | fYFD Token Balance of the currently connected wallet |
| proposals    | List of all proposals in the forge                   |
| emergencies  | List of all emergencies in the forge                 |

## Usage

### tokenBalance

tokenBalance just uses our queryMsg under the hood to query for the connected wallets fYFD balance

```js
const { tokenBalance } = useContractYFD();
```

tokenBalance is given in `micro-units`. This is a convention of the blockchain and when we query coin values from smart contracts we need to multiply them by 10<sup>6</sup>. We use a utility function called convertFromBase which takes the micro-units and converts them to standard currency units. In practice this is how tokenBalance looks when used.

```js
import useContractYFD from 'hooks/useContractYFD';
import convertFromBase from 'utilities/converters/convertFromBase';

function BalancefYFD() {
  const { tokenBalance } = useContractForge();

  return (
    <>Balance fYFD: {convertFromBase(Number(tokenBalance)).toFixed(5)}</>
  );
}

export default BalancefYFD;
```

### proposals

```js
const { proposals } = useContractForge();
```

proposals returns an array of objects. Each object has the following shape:
```js
{
  addr: 
  index:
}
```
Where addr is the contract address of the proposal, and index is the index of the proposal


We pass this array into the `ProposalListAccordions` component, and map through it to create `ProposalListAccordionItems`