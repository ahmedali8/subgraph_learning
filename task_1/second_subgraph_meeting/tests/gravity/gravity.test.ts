import {
  assert,
  createMockedFunction,
  clearStore,
  test,
  newMockEvent,
  newMockCall,
  countEntities,
  mockIpfsFile,
} from "matchstick-as/assembly/index";
import { log } from "matchstick-as/assembly/log";
import {
  Address,
  BigInt,
  Bytes,
  ethereum,
  store,
  Value,
  ipfs,
} from "@graphprotocol/graph-ts";

import {
  handleNewGravatars,
  createNewGravatarEvent,
  trySaveGravatarFromContract,
  saveGravatarFromContract,
  gravatarFromIpfs,
} from "./utils";
import { Gravatar } from "../../generated/schema";
import {
  Gravity,
  NewGravatar,
  CreateGravatarCall,
} from "../../generated/Gravity/Gravity";
import { handleCreateGravatar, handleNewGravatar } from "../../src/gravity";

// Coverage
export { handleCreateGravatar, handleNewGravatar };
export { processGravatar } from "./utils";

// test("Success", () => {
//   log.success("Success!". []);
// });
// test("Error", () => {
//   log.error("Error :( ", []);
// });
// test("Debug", () => {
//   log.debug("Debugging...", []);
// });
// test("Info", () => {
//   log.info("Info!", []);
// });
// test("Warning", () => {
//   log.warning("Warning!", []);
// });

test("Can mock and call function with different argument types", () => {
  let numValue = ethereum.Value.fromI32(152);
  let stringValue = ethereum.Value.fromString("example string value");
  let arrayValue = ethereum.Value.fromI32Array([156666, 123412]);
  let booleanValue = ethereum.Value.fromBoolean(true);
  let objectValue = ethereum.Value.fromAddress(
    Address.fromString("0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7")
  );
  let tupleArray: Array<ethereum.Value> = [
    ethereum.Value.fromI32(152),
    ethereum.Value.fromString("string value"),
  ];
  let tuple = changetype<ethereum.Tuple>(tupleArray);
  let tupleValue = ethereum.Value.fromTuple(tuple);

  let argsArray: Array<ethereum.Value> = [
    numValue,
    stringValue,
    arrayValue,
    booleanValue,
    objectValue,
    tupleValue,
  ];
  createMockedFunction(
    Address.fromString("0x90cBa2Bbb19ecc291A12066Fd8329D65FA1f1947"),
    "funcName",
    "funcName(int32, string, int32[], bool, address, (int32, string)):(void)"
  )
    .withArgs(argsArray)
    .returns([ethereum.Value.fromString("result")]);
  let val = ethereum.call(
    new ethereum.SmartContractCall(
      "conName",
      Address.fromString("0x90cBa2Bbb19ecc291A12066Fd8329D65FA1f1947"),
      "funcName",
      "funcName(int32, string, int32[], bool, address, (int32, string)):(void)",
      argsArray
    )
  )![0];

  assert.equals(ethereum.Value.fromString("result"), val);
});

test("Can test if mocked function reverts", () => {
  createMockedFunction(
    Address.fromString("0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7"),
    "revertedFunction",
    "revertedFunction():(void)"
  ).reverts();
  let val = ethereum.call(
    new ethereum.SmartContractCall(
      "conName",
      Address.fromString("0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7"),
      "revertedFunction",
      "revertedFunction():(void)",
      []
    )
  );

  assert.assertNull(val);
});

test("Can test mock gravity function correctly", () => {
  let contractAddress = Address.fromString(
    "0x89205A3A3b2A69De6Dbf7f01ED13B2108B2c43e7"
  );
  let expectedResult = Address.fromString(
    "0x90cBa2Bbb19ecc291A12066Fd8329D65FA1f1947"
  );
  let bigIntParam = BigInt.fromString("1234");
  createMockedFunction(
    contractAddress,
    "gravatarToOwner",
    "gravatarToOwner(uint256):(address)"
  )
    .withArgs([ethereum.Value.fromUnsignedBigInt(bigIntParam)])
    .returns([
      ethereum.Value.fromAddress(
        Address.fromString("0x90cBa2Bbb19ecc291A12066Fd8329D65FA1f1947")
      ),
    ]);

  let gravity = Gravity.bind(contractAddress);
  let result = gravity.gravatarToOwner(bigIntParam);

  assert.addressEquals(expectedResult, result);
});

test(
  "Should throw an error",
  () => {
    throw new Error();
  },
  true
);
