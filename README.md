# Phoenix Protocol - Core Contracts

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Solidity](https://img.shields.io/badge/Solidity-0.8.20-blue.svg)](https://docs.soliditylang.org/)
[![Foundry](https://img.shields.io/badge/Built%20with-Foundry-orange.svg)](https://book.getfoundry.sh/)

Phoenix Protocol's core DeFi contracts - Farm staking, Vault asset management, Oracle price feeds, and Referral rewards system.

## Contracts

| Contract | Description |
|----------|-------------|
| **Farm** | Main staking pool with lock periods and yield distribution |
| **FarmLend** | Lending extension for Farm positions |
| **Vault** | Multi-asset vault for stablecoin deposits (USDT, USDC) |
| **PUSDOracle** | Chainlink-based price oracle for PUSD peg |
| **UniswapV3Oracle** | DEX TWAP oracle for price feeds |
| **ReferralRewardManager** | Referral bonus distribution system |

## Features

- 🔐 **UUPS Upgradeable** - All contracts support secure upgrades
- 🎯 **Role-based Access Control** - Granular permissions with OpenZeppelin AccessControl
- ⏰ **Lock Period Multipliers** - 7d/30d/90d/365d staking with boosted rewards
- 🔗 **Chainlink Integration** - Reliable price feeds for oracle
- 💸 **Multi-asset Vault** - Support for multiple stablecoins

## Installation

```bash
# Clone the repository
git clone https://github.com/phoenix-protocols/phoenix_contract_core.git
cd phoenix_contract_core

# Install dependencies
forge install

# Build contracts
forge build

# Run tests
forge test
```

## Contract Architecture

```
src/
├── Farm/
│   ├── Farm.sol              # Main staking contract
│   ├── FarmStorage.sol       # Storage layout
│   ├── FarmLend.sol          # Lending extension
│   └── FarmLendStorage.sol
├── Vault/
│   ├── Vault.sol             # Multi-asset vault
│   └── VaultStorage.sol
├── Oracle/
│   ├── PUSDOracle.sol        # Chainlink price oracle
│   ├── UniswapV3Oracle.sol   # DEX TWAP oracle
│   └── *Storage.sol
├── Referral/
│   ├── ReferralRewardManager.sol
│   └── ReferralRewardManagerStorage.sol
├── libraries/
│   ├── FullMath.sol
│   ├── TickMath.sol
│   └── UniswapV2Library.sol
└── interfaces/
    ├── IFarm.sol
    ├── IFarmLend.sol
    ├── IVault.sol
    ├── IPUSDOracle.sol
    └── ...
```

## Key Parameters

| Parameter | Value | Description |
|-----------|-------|-------------|
| Base APY | 15% | Default staking yield |
| 7-day Lock | 1.0x | No bonus |
| 30-day Lock | 1.2x | 20% bonus |
| 90-day Lock | 1.5x | 50% bonus |
| 365-day Lock | 2.0x | 100% bonus |
| Withdraw Fee | 0.5% | Early withdrawal fee |

## Security

- ✅ Audited by [Auditor Name - Coming Soon]
- ✅ UUPS upgrade pattern with role-based authorization
- ✅ Reentrancy protection on sensitive functions
- ✅ Chainlink oracle with staleness checks

## Dependencies

- OpenZeppelin Contracts v4.9.x (Upgradeable)
- Chainlink Contracts
- Uniswap V3 Core

## License

MIT License - see [LICENSE](LICENSE) for details.

## Links

- 🌐 Website: [phoenix.finance](https://phoenix.finance)
- 📖 Documentation: [docs.phoenix.finance](https://docs.phoenix.finance)
