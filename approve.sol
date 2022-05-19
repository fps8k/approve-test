// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0;
import "./USDT.sol";

/*
* @title: Approval contract.
* @author: Anthony (fps) https://github.com/fps8k .
* @dev: 
*
* This contract approves a user some tokens from the callers token balance.
*/

contract Approve
{
    /*
    * @dev:
    *
    * This deploys the USDT and assigns all tokens to the address of this contract.
    * Refer to USDT.sol lines 355 - 364.
    *
    *
    * @param:
    *
    * address(this) => Address of this contract.
    */

    USDT public usdt = new USDT(address(this));

    
    // function c() public view returns(uint256)
    // {
    //     return usdt.balanceOf(address(this));
    // }



    /*
    * @dev:
    *
    * From line 27 this contract owns every USDT Token in existence [You can check using line 30 to 33].

    * Approves address 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB some tokens, as passed in the `_amount`.
    * These tokens are approved from the tokens owned by the contract. I guess thats what you want to do.
    *
    *
    * @param:
    *
    * _spender => Address that will be approved some tokens.
    * _amount => Amount of tokens.
    */

    function __approve(address _spender, uint256 _amount) public
    {
        /*
        * @dev:
        *
        * If you're approving from the contract, the contract must own some tokens.
        */

        usdt.approve(_spender, _amount);            // Simple.
    }
}