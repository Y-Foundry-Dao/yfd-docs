---
layout: default
title: myValues
parent: ⛅ Functions
grand_parent: dApp Frontend
has_children: false
has_toc: false
nav_order: 20
last_modified_date: 2023-01-08
---

WIP
{: .label .label-blue}
# myValues

`myValues` contains functions that work with data related to the connected address (wallet) and returned as stringified or numeric single values formatted for direct use in the UI. 

`my` functions are crafted in such a way that they require no arguments making it easy to deploy rapidly for use in the UI and to ensure that the data is being used in the correct context.

## Import

```tsx
import { myYFD, myFYFD } from '@utilities/myValues';`
```

## Functions

### myYFD
Returns the current balance of YFD based on the Recoil Selector `selectYFD` and the user's wallet address.

_usage:_
```tsx
  myYFD();
```

---

### myFYFD
Returns the current balance of FYFD based on the Recoil Selector `selectFYFD` and the user's wallet address.

  _usage:_
  ```tsx
    myFYFD();
  ```
