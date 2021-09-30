// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0 < 0.9.0;
/*
SPDX list : https://spdx.org/licenses/
SPDX-License-Identifier 목적
1. 라이센서를 명시해줌으로써 스마트컨트랙에 대한 신뢰감을 높일수 있음 
2. 스마트 컨트랙 소스코드가 워낙 오픈되어 있으니, 저작권과 같은 관련된 문제를 해소

주석
1. 블록단위 :보통 블록단위의 주석은 스마트컨트랙, 함수등 많은 양의 설명
2. 행단위 : 행단위는 변수 바로 옆에쓰여서, 짤막짤막한 설명 
*/

contract lec31{

    /*
    add 함수는 9를 리턴! 
    asda
    */
    function add() pure public returns (uint256){
        return 4+5; // 4+5 = 9 리턴 
    }
    
}