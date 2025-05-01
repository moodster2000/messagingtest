// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// import {Script, console2} from "forge-std/Script.sol";
// import {ExampleContract} from "../src/ExampleContract.sol";

// contract SendMessageScript is Script {
//     function setUp() public {}

//     function run() public {
//         uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
//         address sourceContract = vm.envAddress("ETHEREUM_INITIATOR_ADDRESS");
//         uint32 destinationEndpointId = uint32(vm.envUint("ARBITRUM_ENDPOINT_ID"));
        
//         // Message options (generated from OptionsScript)
//         bytes memory options = hex"00030100110100000000000000000000000000030d40";
        
//         vm.startBroadcast(deployerPrivateKey);
        
//         // Estimate fee first
//         (uint256 nativeFee, ) = ExampleContract(sourceContract).estimateFee(
//             destinationEndpointId,
//             "Hello from Ethereum to Arbitrum!",
//             options
//         );
        
//         console2.log("Estimated fee:", nativeFee);
        
//         // Send the message with the estimated fee
//         ExampleContract(sourceContract).sendMessage{value: nativeFee}(
//             destinationEndpointId,
//             "Hello from Ethereum to Arbitrum!",
//             options
//         );
        
//         console2.log("Message sent from Ethereum to Arbitrum");
        
//         vm.stopBroadcast();
//     }
// }