// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ManualToken {
    mapping(address => uint256) private s_balances;

    // string public name = "Manual Token";

    function name() public pure returns (string memory) {
         return "Manual Token";
    }

    function totalSupply() public pure returns (uint256) {
        return 100 ether; // 1e18
    }

    function decimals() public pure returns (uint8) {
        return 18;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return s_balances[_owner];
    }

//    function transfer(address _to, uint256 _amount) public {
//        uint256 previousBalances = balanceOf(msg.sender) + balanceOf(_to);
//        balanceOf(msg.sender) -= _amount;
//        balanceOf(_to) += _amount;
//        require(balanceOf(msg.sender) + balanceOf(_to) == previousBalances);
//    }
}
