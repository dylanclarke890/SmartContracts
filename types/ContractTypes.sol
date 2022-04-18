// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ContractTypes {
    bool public cBool = true;

    uint256 private cUint256 = 1;
    uint32 internal cUint32 = 4294967295;
    uint16 cUint16 = 65535;
    uint8 cUint8 = 255;

    int256 cInt256 = -10000000000000000000000;
    int32 cInt32 = -2147483648;
    int16 cInt16 = -32768;
    int8 cInt8 = -128;

    int16 cNewInt16 = int16(cInt8);

    address payable walletAddress = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    address contractAddress = address(this);

    uint256 balanceOf = walletAddress.balance;
}