---
layout: default
title: Deployment
parent: Life cycle
grand_parent: References
nav_order: 75
---

Deployment
==========

Deployment stage follows these steps:

-   1.

    *Developer* uploads contracts

    -   Executes a Deployment Approval vote in the Vault Proposal Contract

        -   provides Code_ID of uploaded contract

    -   Strategist and Boosters review code and perform any testing/verification

    -   Strategists and Boosters vote to affirm the code is functional and satisfactory

-   2.

    Affirmative Vote from Strategist and Boosters initiates a Contract Instantiation Proposal

    -   to instantiate the uploaded contracts via the Forge

-   3.

    Hash of Uploaded Contract and Github repository are compared

-   4.

    Auditors sign off that Contract Uploaded matches Github Repository

-   5.

    Affirmative vote launches contract under Forge control on the network

MVP requirements:

-   Deployment proposal submitted by fYFD holders