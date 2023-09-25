async function main(){
    const [deployer] = await ethers.getSigners();
    const token = await ethers.getContractFactory('Token');
    const Token = await token.deploy();
    console.log(Token.address);
}

main().then(()=>process.exit(0)).catch((error)=>{
    console.error(error);
    process.exit(1);
})