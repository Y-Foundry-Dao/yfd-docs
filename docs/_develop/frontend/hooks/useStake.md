---
layout: default
title: useStake
parent: 🪝 Hooks
grand_parent: Frontend
has_children: false
has_toc: false
nav_order: 7
---

WIP
{: .label .label-blue}
# useStake

useStake is a custom hook that takes a stake object from our stakeYFD list and returns useful values about our locked YFD tokens.

Where does the stakedYFD list for a connected wallet come from? we never explicitely call it in a component, it just appears in a recoil atom.
That stakedYFD list is set to in the `useContractForge` hook. The way that data flow works is 
1. when a user connects their wallet to the app, we query for the users YFD and fYFD balance. 
2. In order to query for the tokenBalance of fYFD, we have to call the useContractForge hook.
3. Within our `useContractForge` hook we have a `useEffect` to run when connectedWallet changes.
4. That `useEffect` hook sets our stakeYFD list to a recoil atom called `stakedYFDAtom`.
5. This means after a user connects their wallet, we will have a list of the users staked YFD in a recoil atom.

In practice we `.map` through the stakedYFD list and create a component for each stake object in the array.
In that newly created component we can call useStake with that stake object to get useful information about that stake object.

## Import

```js
import useStake from 'hooks/useStake';
```

## Parameters

`stake` - stake is an object containing and `idx` and `stake` property like this:

```js
{
  "idx": String,
  "stake": {
    "asset_deposit_amount": String,
    "asset_withdrawn_amount": String,
    "deposit_height": Number,
    "deposit_timestamp": String,
    "depositor": String,
    "lock_duration": Number
  }
}
```
as you can see this stake object contains useful information about our deposit time and lock duration and amounts locked. We use these values under the hood within the useStake hook to return useful values for us about our staked YFD tokens.

## Return Value

The return values are named in a self explanatory way and are generally just useful information we can extract from our stake object (as defined above).

All values with the `Formatted` suffix are formatted using [date-fns](https://date-fns.org/) into a human readable format

All values can be assumed to be queried for the connected wallet address

| Name                      | Description                                           |
|:--------------------------|:------------------------------------------------------|
| depositDateFormatted      | Date that you made your deposit on                    |
| unlockDateFormatted       | Date that your tokens will unlock                     |
| lockDurationFormatted     | Lock duration                                         |
| timeUntilUnlockFormatted  | Time until the YFD tokens will unlock                 |
| amountStaked              | Amount of YFD staked in this specific stake instance  |


## Usage

```js
  const {
    depositDateFormatted,
    unlockDateFormatted,
    lockDurationFormatted,
    timeUntilUnlockFormatted,
    amountStaked
  } = useStake({ stake });
```  

You see here we just pull in the useStake hook, pass in our stake object, and out comes our useful values. We use this in our `StakeItem` component which displays all the info right now in 1 box.

Below we show how we pull the data into our component and display it.

![useStakeUsage](/assets/images/frontend/useStake/useStakeUsage.png)