// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IGhost {
  function boo() external returns (string memory);

  event Message(string indexed message);
}
