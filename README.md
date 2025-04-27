# CrowdSec

A decentralized platform for secure vulnerability disclosure, enabling transparent report submission and admin verification on-chain.

Today’s vulnerability reporting is centralized, slow, and opaque. Security researchers must trust private channels or corporate platforms, risking censorship, delays, or lack of reward. CrowdSec decentralizes vulnerability submission, making every disclosure immutable and transparent. Reports are submitted as hashes (like IPFS CIDs), timestamped on-chain, and verified by an admin. This protects both reporters and organizations.

By building on Polkadot’s infrastructure, CrowdSec ensures high scalability, true decentralization, and cross-chain compatibility in future expansions. Polkadot’s robust security model allows trustless verification without relying on centralized gatekeepers.

## Demo Video
[https://drive](https://drive.google.com/file/d/1narlfnWEZKbSVq-vVy_F1VZQD_pODzTg/view?usp=sharing)

## Screenshots
https://drive.google.com/drive/folders/1w-Xl5p58B-_EuH4uPsuUE6wjKnVHp5iL?usp=drive_link

## Presentation
https://www.canva.com/design/DAGl0qrAoSs/jKH99HOuqjOQBBUIJIql4A/edit

## Technical Description (SDKs + Polkadot features used)

CrowdSec was developed using:
- Solidity smart contracts
- Polkadot Remix IDE (https://remix.polkadot.io) for writing, compiling, and deploying directly onto the Polkadot ecosystem
Deployment Details:
- The contract was deployed on Westend Asset Hub, a test parachain connected to the Polkadot network.
- Wallets were connected using polkadot.js extension for signing and interacting with the contract.
Key Polkadot features that made this possible:
- Asset Hub Parachain: Provided a lightweight, EVM-compatible environment for fast and low-cost deployment.
- Native Wallet Integration: Seamless connection through polkadot.js extension made it easy to interact securely.
- Interoperability: Built on Polkadot’s cross-chain future, enabling CrowdSec to later integrate with other parachains or bridges.
This approach enabled rapid smart contract development without setting up a full blockchain node, perfectly fitting a hackathon timeline.
