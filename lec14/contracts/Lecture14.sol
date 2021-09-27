// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

contract Lecture14  {
    event numberTracker(uint256 num, string str);
    event numberTracker2(uint256 indexed num, string str);

    uint256 num =0;
    function PushEvent(string memory _str) public {
        emit numberTracker(num,_str);
        emit numberTracker2(num,_str);
        num ++;
    }
}
