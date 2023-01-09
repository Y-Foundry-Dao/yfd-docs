---
layout: default
title: Recoil Atoms
parent: ⚛️ State
grand_parent: dApp Frontend
nav_order: 20
has_children: false
has_toc: false
---

# Recoil Atoms

### Storage

Atom files are stored in the `src/recoil/<component>/atoms.ts` file

## Import

```tsx
import { atom } from 'recoil';
import {
  addressConnectedAtom
} from '@recoil/connected/address/atoms';
import {
  currentChainIDAtom,
  currentContractForgeAtom,
  currentContractGovTokenAtom
} from '@recoil/chainInfo/atoms';
```

## Atoms

### addressConnectedAtom
Current connected wallet address.

_usage:_
```tsx
  const [addressConnected, setAddressConnected] = useRecoilState(addressConnectedAtom);
```

---

### currentChainIDAtom
Current chain ID.

_usage:_
```tsx
  const [chainID, setchainID] = useRecoilState(currentChainIDAtom);
```

---

### currentContractForgeAtom
Current forge contract address.

_usage:_
```tsx
  const [contractForge, setForge] = useRecoilState(currentContractForgeAtom);
```

---

### currentContractGovTokenAtom
Current governance token ($YFD) contract address.

_usage:_
```tsx
  const [contractYFD, setGovToken] = useRecoilState(currentContractGovTokenAtom);
```