// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;
/*
view : function 밖의 변수들을 읽을수 있으나 변경 불가능
pure : function 밖의 변수들을 읽지 못하고, 변경도 불가능
viwe 와 pure 둘다 명시 안할때: function 밖의 변수들을 읽어서, 변경을 해야함.이 정의된 현재 이 컨트랙을 상속받은 자식 컨트랙도 접근가능)
*/
contract lec6{
     uint256 public a = 1;
    
    function viewExample() public view returns(uint256){
        return a+2;
    }
    
    function readAndChangeA() public returns(uint256){
        a = 3;
        return a+2;
    } 
    
    function pureExample() pure public returns(uint256){
        uint256 a2 = 3;
        return a2+2;
    } 
}