// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
3. 어디서 쓰는가?

외부 스마트 컨트랙을 함수를 부를때 : 다른 스마트 컨트랙을 인스턴스화 하여서, try/catch문이 있는 스마트 컨트랙의 함수를 불러와서 사용.
외부 스마트 컨트랙을 생성 할 때 : 다른 스마트컨트랙을 인스턴스화 생성 할 때 씀
스마트컨트랙 내에서 함수를 부를때: this를 통해  try/catch를 씀 


*/

//외부 스마트 컨트랙을 생성 할 때

contract character{
    
    string private name;
    uint256 private power;
    
    constructor(string memory _name, uint256 _power){
        name = _name;
        power = _power;
    }

}

contract runner{
    
    event catchOnly(string _name,string _err);
    
    function playTryCatch(string memory _name, uint256 _power) public returns(bool){
        
        try new character(_name,_power) {
            revert("errors in the try/catch block");
            return(true);
        }
        catch{
            emit catchOnly("catch","ErrorS!!");
            return(false);
        }
        
        
    } 
}



//스마트컨트랙 내에서 함수를 부를때



contract runner2{
    event catchOnly(string _name,string _err);
    
    function simple() public returns(uint256){
        return 4;
    }
    
    
    function playTryCatch() public returns(uint256,bool){
        
        try this.simple() returns(uint256 _value){
            return(_value,true);
        }
        catch{
            emit catchOnly("catch","ErrorS!!");
            return(0,false);
        }
        
        
    } 
}
 