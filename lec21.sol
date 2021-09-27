// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract lec21{
/*
    
    Case 1 : if-else
    if(if가 발동 되는 조건){
        if 내용 
    }
    else{ if 가 발동이 안되면
        else 내용 
    }
    
    Case 2 :if-else if-else
    if(if가 발동 되는 조건){
        if 내용 
    }
    else if(else if가 발동 되는 조건){
        else if 내용 
    }
    ...
    else{ if, else if 가 발동이 안되면
        else 내용 
    }
    

*/    
    string private outcome = "";
    function isIt5(uint256 _number) public returns(string memory){
        if(_number == 5){
            outcome = "Yes, it is 5";
            return outcome;
        }
       
        outcome = "No, it is not 5";
        return outcome;
       
       
        
        
    }
    
        
     function isIt5or3or1(uint256 _number) public returns(string memory){
        if(_number == 5){
            outcome = "Yes, it is 5";
            return outcome;
        }
        else if(_number == 3){
            outcome = "Yes, it is 3";
            return outcome;
        }
        else if(_number == 1){
            outcome = "Yes, it is 1";
            return outcome;
        }
        else{
            outcome = "No, it is not 5, 3 or 1";
            return outcome;
        }
    
       
    }
    


}