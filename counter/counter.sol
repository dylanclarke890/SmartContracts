// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.5.11;

contract Counter {
  uint public count = 0;

  event Increment(uint value);
  event Decrement(uint value);

  function getCurrentCount() public view returns (uint) {
    // this is the same as making a property public.
    return count;
  }

  function increment() public {
    count += 1;
    emit Increment(count);
  }

  function decrement() public {
    count -= 1;
    emit Decrement(count);
  }
}
