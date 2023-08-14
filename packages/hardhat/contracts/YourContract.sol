
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol


  //  error YourContract_NotOwner();

contract YourContract {



  event SetPurpose(address sender, string purpose);

  string public purpose = "Building Unstoppable Apps!!!";
  // address public owner=0x94Af5350dCa993A99a92B30759A1Bb8eb1FA197c;

  constructor() payable {
    // what should we do on deploy?
  }

  function setPurpose(string memory newPurpose) public payable {
    //  if(msg.sender != owner) {
    //  revert YourContract_NotOwner();
    //  }
      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      emit SetPurpose(msg.sender, purpose);
  }

  function Time() public view returns(uint256){
    return block.timestamp;
  }

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}
