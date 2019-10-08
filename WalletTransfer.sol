pragma solidity^0.5.1;

contract WalletTransfer{
    mapping(address=>uint256)  balances;
    
    address payable wallet;
    
    constructor() public{
        wallet=msg.sender;
    }
    
    function buyToken() public payable{
        //buy a token 
        balances[msg.sender]+=1;
        //transfer to wallet
        wallet.transfer(msg.value);
    }
    
    
}