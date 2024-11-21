function swapETHForUSDC(uint256 ethAmount) public payable {
    require(msg.value == ethAmount, "La cantidad de ETH debe coincidir con la enviada");
    uint256 usdcAmount = ethAmount * precio; // Aquí calculas el precio de conversión, esto puede ser un oráculo.
    require(IERC20(usdcAddress).transfer(msg.sender, usdcAmount), "Transferencia fallida");
}
