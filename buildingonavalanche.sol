// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    mapping(address => uint256) public allowance;
    mapping(address => mapping(uint256 => uint256)) public inventory;

    struct Product {
        string productName;
        uint256 productPrice;
    }

    Product[] public products;

    constructor() ERC20("Degen", "DGN") {
        products.push(Product("Orange", 60));
        products.push(Product("LG", 120));
        products.push(Product("HP", 180));
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function buy(uint256 productIndex) public returns (bool) {
        if (productIndex < products.length) {
            Product storage product = products[productIndex];
            uint256 price = product.productPrice;

            if (balanceOf(msg.sender) >= price) {
                _burn(msg.sender, price);
                inventory[msg.sender][productIndex]++;
                return true;
            } else {
                // If balance is not enough, revert transaction
                revert("Your balance is not enough");
            }
        } else {
            // If product not found, revert transaction
            revert("Product not found");
        }
    }

    function ProductItemCount() external view returns (uint256) {
        return products.length;
    }
}
