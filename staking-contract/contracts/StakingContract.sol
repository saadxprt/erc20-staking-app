// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Staking20Base.sol";
import "@thirdweb-dev/contracts/base/ERC20Base.sol";

contract StakingContract is Staking20Base {
    uint256 public maxTokensPerUser;
    uint256 public maxTotalStakedTokens;

    constructor(
        uint80 _timeUnit,
        address _defaultAdmin,
        uint256 _rewardRatioNumerator,
        uint256 _rewardRatioDenominator,
        address _stakingToken,
        address _rewardToken,
        address _nativeTokenWrapper,
        uint256 _maxTokensPerUser,
        uint256 _maxTotalStakedTokens
    ) Staking20Base(
        _timeUnit,
        _defaultAdmin,
        _rewardRatioNumerator,
        _rewardRatioDenominator,
        _stakingToken,
        _rewardToken,
        _nativeTokenWrapper,
        _maxTokensPerUser,
        _maxTotalStakedTokens
    ) {
        maxTokensPerUser = _maxTokensPerUser;
        maxTotalStakedTokens = _maxTotalStakedTokens;
    }

    /// @dev Set the maximum tokens that can be staked per user.
    function setMaxTokensPerUser(uint256 _maxTokens) external onlyOwner {
        maxTokensPerUser = _maxTokens;
    }

    /// @dev Set the maximum total staked tokens.
    function setMaxTotalStakedTokens(uint256 _maxTokens) external onlyOwner {
        maxTotalStakedTokens = _maxTokens;
    }
}
