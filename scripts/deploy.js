async function main() {
  const DataLocations = await ethers.getContractFactory("DataLocations");
  const dataLocations = await DataLocations.deploy();

  console.log("Contract deployed to:", dataLocations.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
      console.error(error);
      process.exit(1);
  });
