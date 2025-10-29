// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

interface IERC20 {
    function transfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function totalSupply() external view returns (uint256);
}
//Notice that the code above is an interface for an ERC20 token, which defines the standard functions that any ERC20 token contract should implement.
// It includes functions for transferring tokens, approving allowances, checking balances, and getting the total supply of tokens.
// This interface can be used by other contracts to interact with any ERC20 token in a standardized way.
// The interface does not include any implementation details, as it only defines the function signatures.
// This allows for flexibility in how the actual token contract is implemented, as long as it adheres to the defined interface.
// The interface is defined using the `interface` keyword in Solidity, and all functions are declared as external.
// Each function includes the `returns` keyword to specify the return type of the function.
// The `view` keyword is used for functions that do not modify the state of the contract, such as `balanceOf`, `allowance`, and `totalSupply`.
// The `transfer`, `approve`, and `transferFrom` functions are used for transferring tokens and managing allowances.
// The `transfer` function allows a user to send tokens to another address.
// The `approve` function allows a user to approve another address to spend a certain amount of tokens on their behalf.
// The `transferFrom` function allows an approved address to transfer tokens from the owner's address to another address.
// The `balanceOf` function allows a user to check the balance of tokens for a specific address.
// The `allowance` function allows a user to check the amount of tokens that an approved address is allowed to spend on behalf of the owner.
// The `totalSupply` function allows a user to check the total supply of tokens in circulation.
// Overall, this interface provides a standardized way for contracts to interact with ERC20 tokens, ensuring compatibility and interoperability within the Ethereum ecosystem.
// This interface can be imported and used in other contracts to interact with any ERC20 token that implements this standard.
// The interface is defined in a separate file, which can be imported into other contracts as needed.
// This allows for modularity and reusability of code, as the same interface can be used across multiple contracts.
// The interface can be extended or modified in the future to include additional functions or features, while still maintaining compatibility with existing contracts that use the original interface.
// The interface is a crucial part of the ERC20 token standard, which is widely used in the Ethereum ecosystem for creating and managing fungible tokens.
// By adhering to this standard, developers can create tokens that can be easily integrated with wallets, exchanges, and other applications that support ERC20 tokens.
// Overall, the IERC20 interface is a fundamental building block for creating and interacting with ERC20 tokens on the Ethereum blockchain.