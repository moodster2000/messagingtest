// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// import {Script, console2} from "forge-std/Script.sol";
// import {ExampleContract} from "../src/ExampleContract.sol";

// contract SetupEthereumPeerScript is Script {
//     function setUp() public {}

//     function run() public {
//         uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
//         // Get the addresses from the environment
//         address ethereumContract = vm.envAddress("ETHEREUM_INITIATOR_ADDRESS");
//         address arbitrumContract = vm.envAddress("ARB_RECEIVER_ADDRESS");
        
//         // Get the endpoint IDs
//         uint32 arbitrumEndpointId = uint32(vm.envUint("ARBITRUM_ENDPOINT_ID"));
        
//         vm.startBroadcast(deployerPrivateKey);
        
//         // Setup peer for the Ethereum contract to point to Arbitrum contract
//         ExampleContract(ethereumContract).setPeer(
//             arbitrumEndpointId, 
//             bytes32(uint256(uint160(arbitrumContract)))
//         );
        
//         console2.log("Set Ethereum contract peer to Arbitrum contract");
        
//         vm.stopBroadcast();
//     }
// }