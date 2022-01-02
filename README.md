# Solidity-Deploying-Tokens_Through-Crowdsale

## Overview
We will create a custom coin called the "KaseiCoin", which you will deploy the crowdsale to a local blockchain using [Remix IDE](https://remix.ethereum.org/), [MetaMask](https://metamask.io/download.html), and [Ganache](https://trufflesuite.com/ganache/). This will be a fungible token that is ERC-20 compliant. You will then launch a crowdsale that will allow people to purchase your KaseiCoin so you can raise funds in wei (ether).

## Run the Application
1. The code from the "KaseiCoin.sol" and "KaseiCoinCrowdsale.sol" file must be pasted or uploaded to Remix IDE in two .sol files.
2. Connect Gnache to Remix through MetaMask as follows:
   * open Ganache and click "Quickstart" ![image](https://user-images.githubusercontent.com/46635638/147865682-8ac7ce43-6f8b-4940-a78b-1bdda53f24e6.png) You should tne see something like the below: ![image](https://user-images.githubusercontent.com/46635638/147865704-d15dc552-9d84-48d9-a941-ef1425358f10.png) For our purposes we will only use the first two accounts using prime index 0 and 1.
   * Open MetaMask and add a network: ![image](https://user-images.githubusercontent.com/46635638/147865805-6d93617b-c209-454c-8365-fcc005ccc64d.png)
Then copy the Ganache RPC Server link and paste to Metamask. You should fill in the rest as follows to create the test network: ![image](https://user-images.githubusercontent.com/46635638/147865802-08f1bfc9-66d0-4d23-ad3e-cf1de32a1d2d.png) Next select accounts and click "Import Account": ![image](https://user-images.githubusercontent.com/46635638/147865822-ee1df3d8-7bb2-4003-9e43-9662b8283791.png) We will create two accounts using the index accounts 0 and 1 as "Account 0" and "Account 1" respectfully in MetaMask.  We start with account 0 as follows: ![image](https://user-images.githubusercontent.com/46635638/147865841-dc66a49c-9a11-4f9e-b903-c7c02cbb53d5.png) ![image](https://user-images.githubusercontent.com/46635638/147865842-090634ac-9e6d-4b2f-abf6-5276e6ccd69c.png) and paste that private key to MetaMask import as follows: ![image](https://user-images.githubusercontent.com/46635638/147865860-d08771cf-e6ca-4454-b41a-0451066ec41b.png) We now have a linked account between MetaMask and Ganache: ![image](https://user-images.githubusercontent.com/46635638/147865886-1f2e17d0-3e35-4f5e-b588-cc6c6b56a589.png) Repeat the account import instructions with another account for creation of "Account 1": ![image](https://user-images.githubusercontent.com/46635638/147865892-99829c74-9576-4e19-86c9-f7a19ea2b94c.png)
3. Connect Remix to Metamask to run contracts: After compiling both code files (see Evaluation Evidence section below for compilation confirmation), we click the "Deploy & Run Transactions" button on Remix: ![image](https://user-images.githubusercontent.com/46635638/147866298-d9539777-ae47-4d78-97e2-c510c24fbe42.png) and use Environment "Injected Web 3" to connect to MetaMask and select the two accounts we will be using for this test run: ![image](https://user-images.githubusercontent.com/46635638/147866337-0b02f1da-4621-4004-8783-13888dba842e.png) Click “Next”, then click “Connect” on the next screen to confirm activation. Once connected, you will see the current account being used on MetaMask appear in the “Account” section of Remix as shown below: ![image](https://user-images.githubusercontent.com/46635638/147866349-5aaf5725-802e-4b28-8f3b-9a33983a39bd.png)

4. Deploying the Deployer Contract: Open deployer and provide required variables for Name, Symbol, and Wallet as follows, then transact: ![image](https://user-images.githubusercontent.com/46635638/147866385-188af2fa-f52a-48d1-823f-d4ba38b0db6f.png) Then confirm the action in MetaMask: ![image](https://user-images.githubusercontent.com/46635638/147866397-48678d98-8467-44fe-a522-ff1de500e664.png) ![image](https://user-images.githubusercontent.com/46635638/147866401-8f2980e9-d026-42c8-ab14-18c6de3359fe.png)
5. Linking the Crowd Sale in Remix: 1) We open the deployed “KaseiCoinCrowdsaleDeployer” contract and copy the Kasei crowdsale contract: ![image](https://user-images.githubusercontent.com/46635638/147866445-358af338-6612-4093-a157-c9173f15dabe.png) then paste it to the “At Address” textbox for the crowdsale contract and click “At Address”: ![image](https://user-images.githubusercontent.com/46635638/147866455-5c4c48a0-3ecf-41a3-805d-6395417b7a1f.png) Next repeat the process for the KaseiCoin contract as we did for the KaseiCoinCrowdsale contract as follows: ![image](https://user-images.githubusercontent.com/46635638/147866461-39f1ee1b-e2b1-43d6-a799-46dce86797da.png) ![image](https://user-images.githubusercontent.com/46635638/147866467-5f55c399-57f6-4ee2-b558-668f75d13369.png) Here now we see the deployed contracts: ![image](https://user-images.githubusercontent.com/46635638/147866476-b51d7b56-308f-4483-a0bd-b814165d0011.png) ![image](https://user-images.githubusercontent.com/46635638/147866480-9b7f233d-8313-4017-9c8d-650cf27c2eb4.png)
6. Now we will begin to transact and add Kasei tokens to our Account 1 user test case.  We will purchase 5 coins for 5 wei in the account value section (since rate = 1), the specify receiver account (primary key 1 in this case) as shown in screenshot below, then click buy tokens: ![image](https://user-images.githubusercontent.com/46635638/147866501-075a5a0b-aaab-4435-9841-f89b930ea70b.png) You then confirm the transaction in MetaMask.
7. We can see Coin values in our wallets by importing the Coins we are minting to MetaMask. We can then add the token in MetaMask by selecting “Add Token” button and copying deployed contract address as the “Token Contract Address”, it should show the token symbol and decimal precision automatically.  Then click add: ![image](https://user-images.githubusercontent.com/46635638/147866515-99c4124e-838a-4cd1-a5bc-db20cd1e64d7.png) 
8. We can also check our wei raised balance in Remix using the contract parameters we already have in place. After adding additional 3 wei in testing, we have a total of 8 wei raised as shown in the crowdsale contract screenshot below: ![image](https://user-images.githubusercontent.com/46635638/147866519-2b834700-7bbf-4dc1-9974-61899f0b25c8.png)
9. Next we check the account balance for our user “Account 1”.  We see that we have 8 Kasei Coins (after initial purchase of 5 and second purchase of 3): ![image](https://user-images.githubusercontent.com/46635638/147866548-7df39e03-9b73-40c4-9ff5-163f70619f64.png)
10. Finally we check the total supply of Kasei coins in circulation as follows: ![image](https://user-images.githubusercontent.com/46635638/147866550-7e95df2d-dc4d-470d-8cab-d2ea877afd23.png)

## Evaluation Evidence (Compile Verification)

![image](https://user-images.githubusercontent.com/46635638/147866566-c9ca1252-b2f6-4294-a797-ce070fd1b9a7.png)

![image](https://user-images.githubusercontent.com/46635638/147866572-09a44104-44bd-4ca9-a425-4373fadbbaa8.png)

## Contracts’ Functionality
### KaseiCoin.sol File
Imports the required ERC20, ERC20Detailed, and ERC20Mintable guidelines/standards from [OpenZeppelin](https://docs.openzeppelin.com/openzeppelin/), so our contract inherits these guidelines/standards to minimize tedious and repetitive coding.

````
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";
````

Create the KaseiCoin Token Contract

````
contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {
    constructor(
        string memory name,
        string memory symbol,
        uint initial_supply

    )
        ERC20Detailed(name, symbol, 18)
        public
    {
        //May stay empty
    }
}
````

### KaseiCoinCrowdsale.sol File

Importing custom KaseiCoin and required crowdsale and MintedCrowdsale contracts to inherit into our own crowdsale contract.

````
import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";

````

Creating the KaseiCoinCrowdsale Contract for actual crowdsale functionality.

````
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

````

Creating the KaseiCoinCrowdsaleDeployer Contract. This contract is a contract that can create, configure, and deploy both our KaseiCoin contract and our KaseiCoinCrowdsale contract.

````
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
````

## Enjoy your new coin minting experience!!!


