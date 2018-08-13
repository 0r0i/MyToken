# ethereum ERC20 내 토큰 만들기
truffle, openzeppelin, geth를 사용하여 만들고 배포하는 토큰

# 1. install requirements
    - truffle
    npm install -g truffle
    - geth
    brew tap ethereum/ethereum
    brew install ethereum

# 2. make contract
    git clone https://github.com/hoho0443/MyToken
    npm install
    ** modify contract ** 
    

# 3. run
    - run geth
    geth --testnet --light --rpc --rpcapi eth,net,web3,personal

    - make eth account (another terminal tab)
    geth --testnet account new
    7bfcac1ca50e51d127d970046a0fefc87411da95 -> eth 보내기

    - attach geth (another terminal tab && geth console)
    geth attach http://127.0.0.1:8545
    > personal.unlockAccount(eth.accounts[0])
    > eth.getBalance(eth.accounts[0])

# 4. deploy
    truffle compile
    truffle migrate --network ropsten
