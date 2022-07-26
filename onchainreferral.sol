pragma solidity ^0.4.25;

///@dev Simple onchain referral storage
contract referralSystem {

    event onUpdatereferral(address indexed player, address indexed referral);

    mapping(address => address) private buddies;

    function() payable external {
        require(false, "Don't send funds to this contract");
    }

    ///@dev Updated the referral of the sender
    function updatereferral(address referral) public {
        buddies[msg.sender] = referral;
        emit onUpdatereferral(msg.sender, referral);
    }

    ///@dev Return the referral of the sender
    function myreferral() public view returns (address){
        return referralOf(msg.sender);
    }

    ///@dev Return the referral of a player
    function referralOf(address player) public view returns (address) {
        return buddies[player];
    }

}

