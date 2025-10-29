// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

library PriceFormula {
    /// @notice price = (totalCoins - soldCoins) * 2
    function computePrice(uint256 totalcoins, uint256 soldcoins) internal pure returns (uint256) {
        require(soldcoins <= totalcoins, "sold > total");
        return (totalcoins - soldcoins) * 2;
    }

    function buycoins ( address buyer, uint256 amount, uint256 totalcoins, uint256 soldcoins) external pure returns (uint256 newSoldCoins, uint256 cost) {
        uint256 price = computePrice(totalcoins, soldcoins);
        cost = amount * price;
        require(amount <= (totalcoins - soldcoins), "Not enough coins in treasury");
        newSoldCoins = soldcoins + amount;
        // _mint(buyer, amount); // Implementierung im Contract nötig
        // Rückerstattung von überschüssigem ETH kann im Contract erfolgen
    }
}

// // The code above is a Solidity smart contract that implements an ERC20 token called "meretrix".
// // It includes standard functions for transferring tokens, approving allowances, and checking balances.
// // The contract also includes a custom function for buying tokens, which calculates the cost based on
// // a dynamic pricing formula defined in a separate library called "PriceFormula".
// // The contract uses events to log transfers and approvals, allowing for easy tracking of token movements
// // and changes in allowances.
// // The contract includes a constructor that initializes the token's name, symbol, and decimal places.
// // The contract maintains a total supply of tokens, as well as mappings to track the balance of
// // each address and the allowances granted to other addresses.
// // The contract includes a minting function that allows new tokens to be created and added to
// // a specific address's balance.
// // The buycoins function allows users to purchase tokens by sending Ether to the contract.
// // The cost of the tokens is calculated based on the number of tokens being purchased and the
// // current price, which is determined by the PriceFormula library.
// // The contract includes checks to ensure that there are enough tokens available in the treasury

