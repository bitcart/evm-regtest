set no-exit-message

[private]
default:
    @just --list --unsorted --justfile {{ justfile() }}

# start a local chain (chain id 31337, 20 funded accounts)
chain:
    anvil --accounts 20

# install contract dependencies
install:
    forge soldeer install

# check formatting and lint contracts
lint: install
    forge fmt --check
    forge lint --deny notes

# deploy FunToken to the local chain
deploy: install
    forge create FunToken --broadcast --unlocked --from 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
