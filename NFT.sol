//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage{
    address public owner;
    uint8 private tokenID;
    string public tokenURL="https://gateway.pinata.cloud/ipfs/QmVoS9sHwPajxSAdFPFa3jAqGET3fAjt5yispvWoL4sQ4B"; //json file url

    constructor() ERC721("Suraj","SS"){
        owner=msg.sender;
    }


    function mintNFT() public{
        require(tokenID==0,"ONLY ONE TOKEN IS ALLOWED");
        require(owner==msg.sender,"ONLY OWNER CAN MINT");
        _safeMint(msg.sender,tokenID);
        _setTokenURI(tokenID,tokenURL);
        tokenID++;
    }
}
