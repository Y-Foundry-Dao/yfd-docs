---
layout: default
title: Forge Execute
parent: Forge Messages
grand_parent: Contract Messages
has_children: false
has_toc: false
nav_order: 2
---

WIP
{: .label .label-blue}

# Forge Contract Executes

<details markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Stake YFD
{% capture description %}
Deposits YFD in Forge. The below JSON should be base64 encoded and included in the "msg" field of a YFD execute send message. The YFD contract will execute the stake message on the Forge. 
{% endcapture %}
{% capture key %}
stake
{% endcapture %}
{% capture object %}
{
  stake: {
      lock_duration: 10512000
  }
}
{% endcapture %}
{% capture json %}
{
  "stake": { 
    "lock_duration": 10512000 
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}

## Create Vault Proposal
{% capture description %}
Submits vault proposal to Forge. The below JSON should be base64 encoded and included in the "msg" field of a YFD execute send message. The YFD contract will execute the create_vault_proposal message on the Forge. 
{% endcapture %}
{% capture key %}
create_vault_proposal
{% endcapture %}
{% capture object %}
{
  create_vault_proposal: {
    msg: {
      proposal_info: {
        name: "Foo_name",
        ticker: "TEST",
        proposal_url: "www.example.com",
        tvl_limit: "1000000",
        contact: [
            "nobody@www.example.com"
        ],
        developer: "[developer address]",
        development_cost: "67000",
        funding_only: false,
        funding_denomination: "[YFD token]",
        nft_quantity: 100,
        statement_of_work: "www.example.com",
        num_payments: 3,
        payment_frequency: 10000,
        github: "www.example.com",
        self_vouched_information: "www.example.com",
      }
    }
  }
}
{% endcapture %}
{% capture json %}
{
  "create_vault_proposal": {
    "msg": {
      "proposal_info": {
        "name": "Foo_name",
        "ticker": "TEST",
        "proposal_url": "www.example.com",
        "tvl_limit": "1000000",
        "contact": [
          "nobody@www.example.com"
        ],
        "developer": "[developer address]",
        "development_cost": "67000",
        "funding_only": false,
        "funding_denomination": "[YFD token]",
        "nft_quantity": 100,
        "statement_of_work": "www.example.com",
        "num_payments": 3,
        "payment_frequency": 10000,
        "github": "www.example.com",
        "self_vouched_information": "www.example.com"
      }
    }
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


## Create Proposal
These create_proposal messages are executed directly on the Forge contract. In Terra Station, go to Contract, enter the Forge address in the search bar, and click Execute.

### Create Message Proposal
{% capture description %}
Creates a message proposal. 
{% endcapture %}
{% capture key %}
message
{% endcapture %}
{% capture object %}
{ 
  create_proposal: {
    proposal_type: {
      message: {
        contract_addr: "[proposal vote address]",
        message: encodeBase64({ finalize_vote: {} }),
      }
    },
    emergency: true,
    justification_link: "example.com"
  } 
}
{% endcapture %}
{% capture json %}
{
  "create_proposal": {
    "proposal_type": {
      "message": {
          "contract_addr": "[proposal vote address]",
          "message": "[base64 encoded message]"
        }
    },
    "emergency": true,
    "justification_link": "example.com"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


### Create Parameter Proposal
{% capture description %}
Creates a parameter proposal. 
{% endcapture %}
{% capture key %}
parameter
{% endcapture %}
{% capture object %}
{ 
  create_proposal: {
    proposal_type: {
    parameter: {
        name: "GovernanceVoteLength", 
        change: {
          change: {
              value: "400",
          }
        }
      }
    },
    emergency: true,
    justification_link: "example.com"
  } 
}
{% endcapture %}
{% capture json %}
{
  "create_proposal": {
    "proposal_type": {
        "parameter": {
          "name": "GovernanceVoteLength", 
          "change": {
            "change": {
              "value": "400"
          }
        }  
      }
    },
    "emergency": true,
    "justification_link": "example.com"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


### Create Address Whitelist Proposal
{% capture description %}
Adds a new address to the whitelist with specified roles.
{% endcapture %}
{% capture key %}
address_whitelist
{% endcapture %}
{% capture object %}
{
  create_proposal: {
    proposal_type: {
      address_whitelist: {
        address: "[New address]",
        change: {
          new: {
            name: "Developer_name",
            image_link: "www.example.com",
            roles: [
              "developer",
              "booster"
            ],
            links: {
              github: "https://github.com/example-user-account",
              keybase: "",
              telegram: "",
              twitter: "",
              url: "",
            }
          }
        }
      }
    },
    emergency: false,
    justification_link: "example.com"
  }
}
{% endcapture %}
{% capture json %}
{
  "create_proposal": {
    "proposal_type": {
      "address_whitelist": {
        "address": "[New address]",
        "change": {
          "new": {
            "name": "Developer_name",
            "image_link": "www.example.com",
            "roles": [
              "developer",
              "booster",
              "strategist",
              "proposer",
              "payee"
            ],
            "links": {
              "github": "https://github.com/example-user-account",
              "keybase": "",
              "telegram": "",
              "twitter": "",
              "url": ""
            }
          }
        }
      }
    },
    "emergency": false,
    "justification_link": "example.com"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


### Create Token Whitelist Proposal
{% capture description %}
Adds a token to the whitelist. This is necessary before a vault proposal can be instatiated.
{% endcapture %}
{% capture key %}
token_whitelist
{% endcapture %}
{% capture object %}
{ 
  create_proposal: {
    proposal_type: {
      token_whitelist: {
        token: "[YFD_address]",
        change: {
          new: {
            name: "YFD",
            asset_type: "cw20",
            stable: false,
            oracle_address: "",
            token_to_usd: "0.01",
          }
        }
      }
    },
    emergency: true,
    justification_link: "example.com"
  }
}
{% endcapture %}
{% capture json %}
{
  "create_proposal": {
    "proposal_type": {
      "token_whitelist": {
        "token": "[YFD_address]",
        "change": {
          "new": {
            "name": "YFD",
            "asset_type": "cw20",
            "stable": false,
            "oracle_address": ""
            "toten_to_usd": "0.01"
          }
        }
      }
    },
    "emergency": true,
    "justification_link": "example.com"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


### Create Vault Proposal Stop Proposal 
{% capture description %}
Create a proposal to stop a vault proposal. The proposal ID can be queried with all_proposals. 
{% endcapture %}
{% capture key %}
vault_proposal_stop
{% endcapture %}
{% capture object %}
{
  create_proposal: {
    proposal_type: {
      vault_proposal_stop: {
        vault_proposal_idx: "1"
      }
    },
    emergency: true,
    justification_link: "[link to IPFS or url]"
  }
}
{% endcapture %}
{% capture json %}
{
  "create_proposal": {
    "proposal_type": {
      "vault_proposal_stop": {
        "vault_proposal_idx": "1"
      }
    },
    "emergency": true,
    "justification_link": "[link to IPFS or url]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


### Create Vault Liquidate Proposal
{% capture description %}

{% endcapture %}
{% capture key %}
vault_liquidate
{% endcapture %}
{% capture object %}
{ 
  create_proposal: {
    proposal_type: {
      vault_liquidate: {
        vault_address: "[vault address]"
      }
    },
    emergency: true,
    justification_link: "example.com"
  } 
}
{% endcapture %}
{% capture json %}
{
  "create_proposal": {
    "proposal_type": {
        "vault_liquidate": {
          "vault_address": "[vault address]"
      }
    },
    "emergency": true,
    "justification_link": "example.com"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


### Create Text Proposal
{% capture description %}

{% endcapture %}
{% capture key %}
text
{% endcapture %}
{% capture object %}
{ 
  create_proposal: {
    proposal_type: {
       text: {
        text: "This is a text vault proposal test"
      }
    },
    emergency: false,
    justification_link: "example.com"
  } 
}
{% endcapture %}
{% capture json %}
{
  "create_proposal": {
    "proposal_type": {
      "text": {
        "text": "This is a text vault proposal test"
      }
    },
    "emergency": false,
    "justification_link": "example.com"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


### Create Vault Migrate Proposal
{% capture description %}

{% endcapture %}
{% capture key %}
vault_migrate
{% endcapture %}
{% capture object %}
{
  create_proposal: {
      proposal_type: {
        vault_migrate: {
          vault_index: "1",
          new_code_id: "[new vault code Id]",
        },
      },
      emergency: true,
      justification_link: "String"
  } 
}
{% endcapture %}
{% capture json %}
{
  "create_proposal": {
    "proposal_type": {
      "vault_migrate": {
        "vault_index": "1",
        "new_code_id": "[new vault code Id]"
      }
    },
    "emergency": true,
    "justification_link": "String"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


## Finalize Proposal
{% capture description %}
Finalize a proposal using proposal index number from all_proposals query. 
{% endcapture %}
{% capture key %}
finalize_proposal
{% endcapture %}
{% capture object %}
{
  finalize_proposal: {
    idx: "1"
  }
}
{% endcapture %}
{% capture json %}
{
  "finalize_proposal": {
    "idx": "1"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


## Claim YFD
{% capture description %}
Claim YFD previously deposited into the Forge using the index number from balance_detail query.
`deposit_timestamp returned` uses [env.block.time](https://docs.rs/cosmwasm-std/latest/cosmwasm_std/struct.BlockInfo.html) which is UNIX epoch represented in nanoseconds.  Divide by 1,000,000 to receive a traditional UNIX timestamp.  Timestamp data is generated on line 1083 of Forge `contract.rs`.
{% endcapture %}
{% capture key %}
claim
{% endcapture %}
{% capture object %}
{
  claim: {
    stake_idx: 1
  }
}
{% endcapture %}
{% capture json %}
{
  "claim": {
    "stake_idx": "1"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}
