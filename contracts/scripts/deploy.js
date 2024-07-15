
const hre = require("hardhat");

async function main() {
  try {
    const ExchangeTF = await hre.ethers.getContractFactory("ExchangeTF");
    const exchangetf = await ExchangeTF.deploy();

    if (typeof exchangetf.deployed === 'function') {
      await exchangetf.deployed();
      console.log("Contract deployed to:", exchangetf.address);
    } else {
      console.error('exchangetf.deployed is not a function');
    }
  } catch (error) {
    console.error('An error occurred during deployment:', error);
  }
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

