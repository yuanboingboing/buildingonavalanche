# DegenToken

DegenToken is a decentralized ERC-20 token with additional features, such as a basic marketplace where users can buy products using the token.

## Features

- Minting and burning of tokens by the owner.
- Token transfers between users.
- Product marketplace where users can buy products using their tokens.

## Smart Contract Structure

The smart contract is built on the Ethereum blockchain using the Solidity programming language. It utilizes the OpenZeppelin library for ERC-20 functionality and includes an ownership system.

### Product Structure

The marketplace includes the following products:

1. Orange - 60 DGN
2. LG - 120 DGN
3. HP - 180 DGN

## Getting Started

To interact with the DegenToken smart contract, you can follow these steps:

1. Deploy the smart contract to the Ethereum blockchain.
2. Mint some tokens as the owner using the `mint` function.
3. Users can transfer tokens, burn their own tokens, and buy products from the marketplace.

## Smart Contract Functions

### Minting

The `mint` function allows the owner to create new tokens and assign them to a specific address.

### Burning

The `burn` function allows users to destroy their own tokens.

### Transferring

The `transfer` function enables users to send tokens to other addresses.

### Buying Products

The `buy` function allows users to purchase products from the marketplace by spending their tokens.

### Inventory Tracking

The smart contract keeps track of each user's inventory, indicating the quantity of each product they own.


