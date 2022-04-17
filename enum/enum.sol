// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.5.11;

contract EnumUsage {
    enum State { Waiting, Ready, Active }
    State public state;

    constructor() public {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function ready() public {
        state = State.Ready;
    }

    function isActive() public view returns (bool) {
        return state == State.Active;
    }
}