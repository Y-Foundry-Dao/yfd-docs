---
layout: default
title: useMsg
grand_parent: ⚛️ Frontend
parent: 🪝 Hooks
has_toc: false
has_children: false
nav_order: 1
---

MVP
{: .label .label-purple}
# useMsg

useMsg is a custom hook that returns a function for querying and executing msg's on smart contracts

## Import

```js
import useMsg from 'hooks/useMsg';
```

## Parameters

`none`

## Return Value

| Name        | Description                                         |
|:------------|:----------------------------------------------------|
| executeMsg  | Function to execute messages on a smart contract    |
| queryMsg    | Function to run query messages on a smart contract  |

## Usage

### executeMsg

To use executeMsg you grab it from the imported hook
```js
const { executeMsg } = useMsg();
```
The executeMsg function takes 3 parameters

| Parameter        | Description                                                              |
|:-----------------|:-------------------------------------------------------------------------|
| contractAddress  | Smart contract address that you would like to execute your message on    |
| msgExecute       | Message to send to smart contract                                        |
| amount           | *Optional* Amount to send with your message                              |

In practice this will return either a txHash if it is successful, which gets stored in a recoil atom. But, If there is an error we display a toast that will catch the error and display a red toast message

Generally this will be used within an eventHandler.

For example in our `handleClickFinalizeProposal` function we pass in the contract address for the forge contract, and the message we want to execute (in this case `{finalize_proposal:{idx:index}}` is the message we are executing on the forge contract). This is finished with a successful toast message if the executeMsg worked.
```js
  const handleClickFinalizeProposal = async (index: any) => {
    if (connectedWallet) {
      const tx = await executeMsg(FORGE_TEST, {
        finalize_proposal: { idx: index }
      });
      toastSuccessful(tx, SUCCESS_FINALIZED);
    }
  };
```

### queryMsg

To use queryMsg you grab it from the imported hook

```js
const { queryMsg } = useMsg();
```

The queryMsg function takes 2 parameters

| Parameter        | Description                                            |
|:-----------------|:-------------------------------------------------------|
| contractAddress  | Smart contract address that you would like to query    |
| msgQuery         | The query message to send to the smart contract        |

This is currently returning either the response from the query or it will display an error in the dev tools console.

As an example. To get a list of all proposals in the forge contract we can call `queryMsg` with the forge contract as the contract address parameter, and our `queryAllProposalContracts` message as the msgQuery. That function to get all proposals would looks like this: 

```js
  const getAllProposalContracts = async () => {
    const response = await queryMsg(FORGE_TEST, queryAllProposalContracts());
    return response;
  };
```

Where `FORGE_TEST` is our forge smart contract, and `queryAllProposalContracts` is a msg accepted by the smart contract that looks like this `{all_proposals:{}}`