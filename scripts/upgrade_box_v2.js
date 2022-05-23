const { ethers, upgrades } = require("hardhat");

const PROXY = "0x4Ea674352Da1e3Bc38cBb1557dE83e1245c2F493";

async function main() {
    const BoxV2 = await ethers.getContractFactory("BoxV2");
    console.log("Upgrading Box...");
    await upgrades.upgradeProxy(PROXY, BoxV2);
    console.log("Box upgraded");
}

main();