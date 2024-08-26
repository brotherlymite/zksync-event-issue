// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test} from 'forge-std/Test.sol';

import {Ghost} from '../src/contracts/Ghost.sol';

contract GhostTest is Test {
  Ghost public ghost;
  event Message(string indexed message);

  function setUp() public {
    ghost = new Ghost();
  }

  function testIssue() public {
    vm.expectEmit(address(ghost));
    emit Message(ghost.MESSAGE());

    assertEq(ghost.boo(), 'Boo!');
  }

  function testWorks() public {
    vm.expectEmit(address(ghost));
    emit Message('BOO');

    assertEq(ghost.boo(), 'Boo!');
  }
}
