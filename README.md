# evm-regtest

Local Ethereum chain with a test ERC-20 token, for testing Bitcart against a regtest-like EVM chain.

`FunToken` (FUN) has 6 decimals like USDT, and mints 1,000,000 FUN to the deployer.

## Requirements

- [Foundry](https://getfoundry.sh)
- [just](https://just.systems)

## Usage

```sh
just chain   # starts anvil on 127.0.0.1:8545, chain id 31337
just deploy  # in another terminal
```

The token deploys to `0x5FbDB2315678afecb367f032d93F642f64180aa3` from the first default account
(`0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266`). Restart `just chain` to reset the chain.
