// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExchangeTF {
    mapping(address => uint256) public stakes;
    address public owner;
    uint256 public totalStaked;

    constructor() {
        owner = msg.sender;
    }

    function stake() public payable {
        require(msg.value > 0, "Must send some XDC to stake");
        stakes[msg.sender] += msg.value;
        totalStaked += msg.value;
    }

    function unstake(uint256 amount) public {
        require(stakes[msg.sender] >= amount, "Insufficient staked amount");
        stakes[msg.sender] -= amount;
        totalStaked -= amount;
        payable(msg.sender).transfer(amount);
    }

    function buyETF() public {
        require(msg.sender == owner, "Only owner can buy ETF");
        // Logic to buy ETF using staked XDC
    }
}
