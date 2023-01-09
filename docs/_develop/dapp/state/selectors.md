---
layout: default
title: Recoil Selectors
parent: ⚛️ State
grand_parent: dApp Frontend
nav_order: 15
has_children: false
has_toc: false
---

# Selectors

## Storage
Selector files are stored in the `src/recoil/<component>/selectors.ts` file

## Import

```tsx
import { useRecoilValueLoadable } from 'recoil';
import {
  selectYFDConnected,
  selectFYFDConnected
} from '@recoil/connected/address/selectors';
```

### selectYFDConnected
Return the YFD balance for the connected wallet address.

_usage:_
```tsx
  const result = useRecoilValueLoadable(selectYFD);
  const yfd = result.state === 'hasValue' ? result.contents : 0;
```

### selectFYFDConnected
Return the FYFD balance for the connected wallet address.

_usage:_
```tsx
  const result = useRecoilValueLoadable(selectFYFD);
  const fyfd = result.state === 'hasValue' ? result.contents : 0;
```
