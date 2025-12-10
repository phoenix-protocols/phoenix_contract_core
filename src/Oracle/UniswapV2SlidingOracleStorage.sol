// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UniswapV2SlidingOracleStorage {
    struct Observation {
        uint256 timestamp;
        uint256 price0Cumulative;
        uint256 price1Cumulative;
    }

    /// @notice Uniswap V2 factory address
    address public immutable factory;

    /// @notice Total window size (e.g. 24 hours)
    uint256 public immutable windowSize;

    /// @notice Number of observation buckets (e.g. 24 buckets → 1-hour resolution)
    uint8 public immutable granularity;

    /// @notice Time per bucket = windowSize / granularity
    uint256 public immutable periodSize;

    /// @notice pair → circular buffer of observations
    mapping(address => Observation[]) public pairObservations;

    error SlidingOracle_InvalidGranularity();
    error SlidingOracle_WindowNotDivisible();
    error SlidingOracle_MissingHistoricalData();
    error SlidingOracle_UnexpectedTimeElapsed();
}
