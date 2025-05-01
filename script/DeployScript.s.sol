// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// import {Script, console2} from "forge-std/Script.sol";
// import {ExampleContract} from "../src/ExampleContract.sol";

// contract DeployScript is Script {
//     function setUp() public {}

//     function run() public {
//         uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
//         address layerZeroEndpoint = vm.envAddress("LAYERZERO_ENDPOINT");
        
//         vm.startBroadcast(deployerPrivateKey);
        
//         ExampleContract exampleContract = new ExampleContract(layerZeroEndpoint);
        
//         console2.log("ExampleContract deployed at:", address(exampleContract));
        
//         vm.stopBroadcast();
//     }
// }