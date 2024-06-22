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
        address _nativeTokenWrapper
    ) Staking20Base(
        _timeUnit,
        _defaultAdmin,
        _rewardRatioNumerator,
        _rewardRatioDenominator,
        _stakingToken,
        _rewardToken,
        _nativeTokenWrapper
    )  {

    }

}