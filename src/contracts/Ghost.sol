// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '../interfaces/IGhost.sol';

contract Ghost is IGhost {
  string public constant MESSAGE = 'BOO';

  function boo() external returns (string memory) {
    emit Message(MESSAGE);
    return 'Boo!';
  }
}
