// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// import {Script, console2} from "forge-std/Script.sol";
// import {ExampleContract} from "../src/ExampleContract.sol";

// contract SetupArbitrumPeerScript is Script {
//     function setUp() public {}

//     function run() public {
//         uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
//         // Get the addresses from the environment
//         address ethereumContract = vm.envAddress("ETHEREUM_INITIATOR_ADDRESS");
//         address arbitrumContract = vm.envAddress("ARB_RECEIVER_ADDRESS");
        
//         // Get the endpoint IDs
//         uint32 ethereumEndpointId = uint32(vm.envUint("ETHEREUM_ENDPOINT_ID"));
        
//         vm.startBroadcast(deployerPrivateKey);
        
//         // Setup peer for the Arbitrum contract to point to Ethereum contract
//         ExampleContract(arbitrumContract).setPeer(
//             ethereumEndpointId, 
//             bytes32(uint256(uint160(ethereumContract)))
//         );
        
//         console2.log("Set Arbitrum contract peer to Ethereum contract");
        
//         vm.stopBroadcast();
//     }
// }