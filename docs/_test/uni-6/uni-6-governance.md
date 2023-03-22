---
layout: default
title: Governance Parameters
parent: Uni-6
nav_order: 1
last_modified_date: 2023-03-21
---

## Instatiated Governance Parameters
`https://github.com/Y-Foundry-Dao/yfd-governance/contracts/forge/src/governance_parameters.rs`

```rust
    set_governance_percent(
        storage,
        "FundingRatio",
        "$YFD to fYFD Funding Ratio",
        "For determining the ratio of $YFD value for each fYFD that provides the \
        individual’s funding limit for vault proposals (as a Strategist or Booster)",
        Decimal::from_str("1.0")?,
        Decimal::from_str("0.0")?,
        Decimal::from_str("1.0")?,
    )?;
    //2
    set_governance_uint64(
        storage,
        "MaxLockTime",
        "$YFD Maximum Lock Time",
        "Maximum blocks to be allowed as lock time.",
        BLOCKS_PER_YEAR * 2,
        BLOCKS_PER_YEAR,
        BLOCKS_PER_YEAR * 4,
    )?;
    //3
    set_governance_uint64(
        storage,
        "MinLockTime",
        "$YFD Minimum Lock Time",
        "Minimum blocks to be allowed as lock time.",
        BLOCKS_PER_WEEK * 2,
        BLOCKS_PER_WEEK,
        BLOCKS_PER_YEAR,
    )?;
    //4
    set_governance_decimal(
        storage,
        "LockingBlockMultiplier",
        "$YFD to fYFD Locking Block Multiplier",
        "For determining the amount of fYFD to grant a locker of $YFD per $YFD for one block locked.",
        //Number calculated to be as close to a 2.5x multiplier for 2 years of locking as rounding will allow.
        Decimal::from_str("0.000000237823439878")?,
        Decimal::from_str("0.000000000000000001")?,
        Decimal::from_str("0.00005")?,
    )?;
    //5
    set_governance_uint128(
        storage,
        "fYFD_VaultProposalMin",
        "fYFD Minimum Amount for Vault Proposal",
        "For determining the minimum fYFD points required for the individual to be \
        able to submit a vault proposal.",
        5000u128,
        1u128,
        500000u128,
    )?;
    //6
    set_governance_uint128(
        storage,
        "fYFD_GovernanceProposalMin",
        "fYFD Minimum Amount for Governance Proposal",
        "For determining the minimum fYFD points required for the individual to be \
        able to submit a governance proposal.",
        5000u128,
        1u128,
        500000u128,
    )?;
    //7
    set_governance_uint128(
        storage,
        "fYFD_EmergencyProposalMin",
        "For determining the minimum fYFD points required for the individual to be \
        able to submit an emergency proposal.",
        "description",
        50000u128,
        1u128,
        1000000u128,
    )?;
    //8
    set_governance_percent(
        storage,
        "EmergencyMajority",
        "Majority % for Emergency Proposal",
        "For determining the amount of YES votes required to pass an emergency proposal.",
        Decimal::from_str("0.501")?,
        Decimal::from_str("0.1")?,
        Decimal::from_str("0.8")?,
    )?;
    //9
    set_governance_uint64(
        storage,
        "ActiveProposalMax",
        "Active Proposal Maximum for an Individual",
        "Maximum amount of active proposals allowed simultaneously from an individual \
        during a block",
        3u64,
        1u64,
        5u64,
    )?;
    //10
    set_governance_uint64(
        storage,
        "SubmissionCooldown",
        "Proposal Submission Cooldown Period for an Individual",
        "Blocks required to have passed since the last active proposal from an \
        individual has been resolved.",
        BLOCKS_PER_HOUR,
        BLOCKS_PER_HOUR,
        BLOCKS_PER_MONTH * 3,
    )?;
    //11
    set_governance_percent(
        storage,
        "VaultProposerDepositMin",
        "Vault Proposer Minimum Stablecoin Deposit",
        "Minimum amount of Stablecoins required to accept a vault proposal submission",
        Decimal::from_str("0.05")?,
        Decimal::from_str("0.0")?,
        Decimal::from_str("1.0")?,
    )?;
    //12
    set_governance_uint128(
        storage,
        "VaultTVLMinimum",
        "Vault Proposal TVL Minimum",
        "Minimum TVL (in USD) a Vault Proposal / Strategy should be designed to support",
        10_000,
        u128::MIN,
        u128::MAX,
    )?;
    //13
    set_governance_uint128(
        storage,
        "VaultDeveloperMax",
        "Vault Proposal Developer Funding Maximum",
        "Boundaries of funding requirements for vault proposal developer",
        1_000_000,
        u128::MIN,
        u128::MAX,
    )?;
    //14
    set_governance_uint128(
        storage,
        "VaultDeveloperMin",
        "Vault Proposal Developer Funding Minimum",
        "Boundaries of funding requirements for vault proposal developer",
        1,
        1,
        10_000_000_000,
    )?;
    //15
    set_governance_uint64(
        storage,
        "MaxNft",
        "Maximum Booster NFT per Proposal",
        "Number of Boosters to Allow to participate in a proposal",
        57u64,
        0u64,
        u64::MAX,
    )?;
    //16.
    set_governance_uint128(
        storage,
        "MinimumBoosterContribution",
        "Minimum Value of Individual Booster Contribution",
        "Minimum amount of Stablecoin required for a booster deposit.  This value may be unnecessary with a fixed / equal distribution",
        10,
        u128::MIN,
        u128::MAX,
    )?;
    //17
    set_governance_percent(
        storage,
        "VaultBoosterDepositMin",
        "Minimum percentage of Development Fee required per Vault Proposal Booster",
        "Minimum percentage of investment required by booster. Must be greater \
        than #16 (Minimum Value of Individual Booster Contribution",
        Decimal::from_str("0.01")?,
        Decimal::from_str("0.0")?,
        Decimal::from_str("1.0")?,
    )?;
    //18
    set_governance_percent(
        storage,
        "VaultBoosterDepositMax",
        "Maximum percentage of Development Fee required per Vault Proposal Booster",
        "Maximum percentage of REMAINING developer fee allowed to be contributed by an \
        individual booster. Must be greater than #20 (Maximum Value of Individual Booster Contribution)",
        Decimal::from_str("0.10")?,
        Decimal::from_str("0.0")?,
        Decimal::from_str("1.0")?,
    )?;
    //19
    set_governance_uint128(
        storage,
        "ClaimContractDistributionExpirationBlockTime",
        "Number of Blocks after which to allow claim contract token sender to reclaim sent tokens.",
        "Number of Blocks after which to allow claim contract token sender to reclaim (clawback) \
        sent tokens. Value is in blocks.",
        100_000,
        u128::MIN,
        u128::MAX,
    )?;
    //20
    set_governance_percent(
        storage,
        "GovernanceQuorum",
        "Governance Proposal Quorum",
        "Percentage of votes needed to be cast to meet quorum for a Governance proposal.",
        Decimal::from_str("0.25")?,
        Decimal::from_str("0.05")?,
        Decimal::from_str("0.95")?,
    )?;
    //21
    set_governance_percent(
        storage,
        "VaultQuorum",
        "Vault Proposal Quorum",
        "Percentage of votes needed to be cast to meet quorum for a Vault proposal.",
        Decimal::from_str("0.25")?,
        Decimal::from_str("0.05")?,
        Decimal::from_str("0.95")?,
    )?;
    //22
    set_governance_percent(
        storage,
        "EmergencyQuorum",
        "Emergency Proposal Quorum",
        "Percentage of votes needed to be cast to meet quorum for a Emergency proposal.",
        Decimal::from_str("0.30")?,
        Decimal::from_str("0.05")?,
        Decimal::from_str("0.95")?,
    )?;
    //23
    set_governance_uint64(
        storage,
        "GovernanceVoteLength",
        "Governance Proposal Voting Period Length",
        "Amount of blocks that a governance proposal is considered active for \
        voting, after which it no longer accepts votes.",
        BLOCKS_PER_DAY,
        BLOCKS_PER_HOUR,
        BLOCKS_PER_MONTH,
    )?;
    //24
    set_governance_uint64(
        storage,
        "VaultVoteLength",
        "Vault Proposal Voting Period Length",
        "Amount of blocks that a Vault proposal is considered active for \
        voting, after which it no longer accepts votes.",
        BLOCKS_PER_DAY,
        BLOCKS_PER_HOUR,
        BLOCKS_PER_MONTH,
    )?;
    //25
    set_governance_uint64(
        storage,
        "EmergencyVoteLength",
        "Emergency Proposal Voting Period Length",
        "Amount of blocks that an Emergency proposal is considered active for \
        voting, after which it no longer accepts votes.",
        BLOCKS_PER_DAY,
        BLOCKS_PER_HOUR,
        BLOCKS_PER_MONTH,
    )?;
    //26
    set_governance_percent(
        storage,
        "VaultFundQuorum",
        "Vault Proposal Funding Distribution Voting Quorum",
        "Percentage of votes needed to be cast to meet quorum for a vault payment distribution.",
        Decimal::from_str("0.30")?,
        Decimal::from_str("0.05")?,
        Decimal::from_str("0.95")?,
    )?;
    //27
    set_governance_uint64(
        storage,
        "VaultFundVoteLength",
        "Vault Proposal Funding Distribution Voting Period Length",
        "Amount of blocks that a Vault proposal funding vote is considered active for voting",
        BLOCKS_PER_DAY * 2,
        BLOCKS_PER_HOUR,
        BLOCKS_PER_MONTH,
    )?;

    set_governance_uint128(
        storage,
        "YfdDepositMin",
        "YFD Deposit for fYFD Minimum",
        "The minimum amount of YFD that can be staked for fYFD.",
        10_000_000_000,
        u128::MIN,
        u128::MAX,
    )?;

    set_governance_decimal(
        storage,
        "FyfdBoostLimitFactor",
        "fYFD to Booster Limit Factor",
        "This is merely a ratio to determine how much a Booster can contribute to vault proposals based on their total fYFD points and is not an indication as to the actual value, if any, of fYFD points",
        Decimal::from_str("0.01")?,
        Decimal::from_str("0.000001")?,
        Decimal::from_str("10.0")?,
    )?;
```