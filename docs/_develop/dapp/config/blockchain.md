---
layout: default
title: Blockchain.ts
parent: ⚙️ Configuration
grand_parent: dApp Frontend
has_children: false
has_toc: false
last_modified_date: 2023-01-07
---

# blockchain.ts

The `blockchain.ts` file contains the configuration for all chain deployments of the dApp. The `blockchain.ts` file contains the following:

```js
export const chainDeploy: ChainDeploy[] = [
  {
    chainID: 'network ID matching that which a deployed network identifies by',
    config: [
      {
        name: 'Human-Readable Network Name',
        lcd: 'URL to LCD',
        forge:
          'deployed forge contract address',
        token:
          'deployed governance token ($YFD) contract address'
      }
    ]
  }
];
```