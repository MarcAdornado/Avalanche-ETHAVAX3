//202110010@fit.edu.ph


// SPDX-License-Identifier: MIT

pragma solidity ^0.8.27;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable{

    constructor(string memory name, string memory symbol) ERC20(name, symbol) Ownable(msg.sender){
        _mint(msg.sender, 100 * 10**decimals()); 
    }

    function decimals() public view virtual override returns (uint8) {
        return 3;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

     function tokenTranfer(address _address, uint256 amount) public {
        _transfer(msg.sender, _address, amount);
    }
    
}
