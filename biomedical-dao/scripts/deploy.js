// scripts/deploy.js

async function main() {
    const ResearchPaper = await ethers.getContractFactory("ResearchPaper");
    const researchPaper = await ResearchPaper.deploy();
    console.log("ResearchPaper deployed to:", researchPaper.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });