// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//for, while, do-while
contract lec22{
/*

    for (초기값; 값이 얼마나 forloop을 돌아야하는지; forloop 한번 돌때마다 값의 변화;) {
            forloop 내용
      }

*/

    event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["South Korea","North Korea","USA","China","Japan"];


    function forLoopEvents() public {
        for(uint256 i = 0; i<countryList.length; i++){
            emit CountryIndexName(i,countryList[i]);
        }
    }
    


/*

    초기값

    while (값이 얼마나 whileloop을 돌아야하는지) {
    whileloop 내용
    whileloop 한번 돌때마다 값의 변화;

    }



*/

    function whileLoopEvents() public {
        uint256 i = 0;
        while(i<countryList.length){
             emit CountryIndexName(i,countryList[i]);
             i++;
        }
    }

/*
    초기값
    do{
          dowhileloop 내용
    }
    while (값이 얼마나 do-while loop을 돌아야하는지)

*/
    function doWhileLoopEvents() public {
        uint256 i = 0;
        do{
            emit CountryIndexName(i,countryList[i]);
            i++;
        }
        while(i<countryList.length);
    }


}
