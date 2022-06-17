// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Lottery { 
    constructor(){
        manager = msg.sender;
      }

        address public manager;
        address payable[] public participants;
        
       

        receive()  external payable{
            require(msg.value==2 ether);
            participants.push(payable(msg.sender));
        }

        function getBalance() public view returns(uint){
            require(msg.sender==manager);
            return address(this).balance;
        }
 
    }


}
