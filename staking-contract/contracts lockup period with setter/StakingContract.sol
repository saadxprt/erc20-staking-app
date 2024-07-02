// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Staking20Base.sol";
import "@thirdweb-dev/contracts/base/ERC20Base.sol";

contract StakingContract is Staking20Base {
    constructor(
        uint80 _timeUnit,
        address _defaultAdmin,
        uint256 _rewardRatioNumerator,
        uint256 _rewardRatioDenominator,
        address _stakingToken,
        address _rewardToken,
        address _nativeTokenWrapper,
        uint256 _maxTokensPerUser,
        uint256 _maxTotalStakedTokens,
        uint256 _lockupDuration
    ) Staking20Base(
        _timeUnit,
        _defaultAdmin,
        _rewardRatioNumerator,
        _rewardRatioDenominator,
        _stakingToken,
        _rewardToken,
        _nativeTokenWrapper,
        _maxTokensPerUser,
        _maxTotalStakedTokens,
        _lockupDuration
    ) {}

    /// @dev Set the lockup duration for staked tokens.
    function setLockupDuration(uint256 _lockupDuration) external onlyOwner {
        lockupDuration = _lockupDuration;
    }
}
