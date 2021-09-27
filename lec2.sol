// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;
/*
  data type
  boolean, bytes, address, uint
  
  reference type
  string, Arrays, struct
  
  mapping type
*/
contract lec2{
    // bolean : true/false
    bool public b = false;
    
    // ! || == != &&
    bool public b1 = !false; //true
    bool public b2 = false || true; // true
    bool public b3 = false == true; //false
    bool public b4 = false != false; // false
    bool public b5 = false && true; // false
    
    //bytes 1~32
    bytes4 public bt = 0x12345678;
    bytes public bt2 = "STRING";
    
    //address 
    address public addr = 0xd9145CCE52D386f254917e481eB44e9943F39138;
    
    // int(음수 포함) Vs uint (음수 안 포함)
    
    //int8 : -2^7 ~ (2^7)-1
    int8 public it = -4;
    //uint8 : 0 ~ 2^8-1
    uint8 public it2 = 123;
    
    //uint256 : 0 ~ 2^256-1
    uint256 public it3 = 123;
}



