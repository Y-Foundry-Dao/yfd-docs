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

## Stake YFD
{% capture description %}
Deposits YFD in Forge. The below JSON should be base64 encoded and included in the "msg" field of a YFD execute send message.
{% endcapture %}
{% capture key %}
Stake YFD
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
Submits vault proposal to Forge. The below JSON should be base64 encoded and included in the "msg" field of a YFD execute send message.
{% endcapture %}
{% capture key %}
Create Vault Proposal
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
                developer: user.key.accAddress,
                development_cost: "67000",
                funding_denomination: yfdToken,
                nft_quantity: 100,
                statement_of_work: "www.example.com",
                developer_initial_payment: "0",
                payment_schedule: 1,
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
          "nobody@www.exmaple.com"
        ],
        "developer": "developer address",
        "development_cost": "6700",
        "funding_denomination": "token",
        "nft_quantity": 100,
        "statement_of_work": "www.example.com",
        "developer_initial_payment": "0",
        "payment_schedule": 1,
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
These create_proposal messages are executed directly on the Forge contract. In Terra Station, go to Contract, enter the Forge address in the search bar, and click "Execute."

### Create Message Proposal
{% capture description %}
Creates a message proposal. 
{% endcapture %}
{% capture key %}
Create Message Proposal
{% endcapture %}
{% capture object %}
{ 
  create_proposal: {
    proposal_type: {
      message: {
        contract_addr: "[proposal vote address]",
        message: encodeBase64({ message_object }),
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
          "message": "[base64 encoded message]",
        }
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
Create Parameter Proposal
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
                "value": "400",
            }
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
Create Address Whitelist Proposal
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
                      links: ["https://github.com/example-user-account"],
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
                          "booster"
                        ],
                        "links": ["https://github.com/example-user-account"],
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
Create Token Whitelist Proposal
{% endcapture %}
{% capture object %}
{ 
  create_proposal: {
    proposal_type: {
        token_whitelist: {
            token: [YFD_address],
            change: {
                new: {
                    name: "YFD",
                    asset_type: "cw20",
                    stable: false,
                    oracle_address: "",
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
        "token": [YFD_address],
        "change": {
          "new": {
            "name": "YFD",
            "asset_type": "cw20",
            "stable": false,
            "oracle_address": ""
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
Create Vault Proposal Stop Proposal
{% endcapture %}
{% capture object %}
{
  create_proposal: {
    proposal_type: {
      vault_proposal_stop: {
        vault_proposal_idx: "1"
      },
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
    },
    "emergency": true,
    "justification_link": "[link to IPFS or url]"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


### Create Vault Release Proposal
{% capture description %}

{% endcapture %}
{% capture key %}
Create Vault Release Proposal
{% endcapture %}
{% capture object %}
{ 
  create_proposal: {
    proposal_type: {
      vault_release: {
        proposal_id: "1",
        github_commit: "www.github.com",
        code_hash: "code hash string",
        instatiate_msg: encodeBase64({
                    claim_contract: "[claim contract address]",
                    proposal_id: "1",
                    fund_addr: "[YFD token address]"      
        })
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
        "vault_release": {
            "proposal_id": "1",
            "github_commit": "www.github.com",
            "code_hash": "code hash string",
            "instatiate_msg": "[base64 encoded message]"
          }
      }
    },
    "emergency": true,
    "justification_link": "example.com"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


### Create Vault Liquidate Proposal
{% capture description %}

{% endcapture %}
{% capture key %}
Create Vault Liquidate Proposal
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
Create Text Proposal
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
      }
    },
    "emergency": false,
    "justification_link": "example.com"
  }
}
{% endcapture %}

{% include message_execute_info.html description=description key=key object=object json=json %}


## Finalize Proposal
{% capture description %}
Finalize a proposal using proposal index number from all_proposals query. 
{% endcapture %}
{% capture key %}
Finalize Proposal
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
{% endcapture %}
{% capture key %}
Claim YFD
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
