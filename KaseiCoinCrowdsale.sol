pragma solidity ^0.5.5;

import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";

contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale {
    constructor(
        uint rate, // rate in TKNbits
        address payable wallet, // sale beneficiary
        KaseiCoin token // the KaseiCoin itself that the KaseiCoinCrowdsale will work with
    )
        Crowdsale(rate, wallet, token)
        public
    {
        // constructor can stay empty
    }
}



contract KaseiCoinCrowdsaleDeployer {

    address public kasei_token_address;
    address public kasei_crowdsale_address;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet // This address will receive all Ether raised by the sale
    )
        public
    {
        // create the ArcadeToken and keep its address handy
        KaseiCoin token = new KaseiCoin(name, symbol, 0);
        kasei_token_address = address(token);

        // create the ArcadeTokenCrowdsale and tell it about the token
        KaseiCoinCrowdsale kasei_crowdsale = new KaseiCoinCrowdsale(1, wallet, token);
        kasei_crowdsale_address = address(kasei_crowdsale);

        // make the ArcadeTokenCrowdsale contract a minter, then have the ArcadeTokenCrowdsaleDeployer renounce its minter role
        token.addMinter(kasei_crowdsale_address);
        token.renounceMinter();
    }
}