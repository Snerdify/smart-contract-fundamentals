pragma solidity ^0.8.10;

interface AggregatorV3Interface{


    function decimals() external view returns(uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

}

