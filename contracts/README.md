# ExchangeTF Smart Contract

The ExchangeTF Contract is a decentralized application built on the XDC blockchain.

## Features

- Staking XDC.
- Exchange XDC <-> Real world's assets.
- Unstaking XDC.

## Smart Contract Details



### Contract Name

- **Name**: Extf
- **Symbol**: ETF

### Functions

- 

## Deployment

### Prerequisites

- Node.js
- Hardhat
- MetaMask or compatible wallet

### Deployment Steps

1. **Clone the Repository**

   ```bash
   git clone https://github.com/exchangetf/etf
   ```

2. **Install Dependencies**

   ```bash
   npm install
   ```

3. **Compile Smart Contracts**

   ```bash
   npx hardhat compile
   ```

4. **Deploy Smart Contract**

   Update the `deploy.js` script with your deployment logic and run:

   ```bash
   npx hardhat run scripts/deploy.js --network xdctestnet
   ```

   Replace `<network_name>` with the desired network (e.g., `xdctestnet`).
