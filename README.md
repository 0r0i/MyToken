# ethereum ERC20기반의 토큰 만들기
truffle, openzeppelin, geth를 사용하여 토큰을 만들고 이더리움 테스트넷에 배포

## install requirements
    - truffle
    npm install -g truffle
    - geth
    brew tap ethereum/ethereum
    brew install ethereum

## make contract
    git clone https://github.com/hoho0443/MyToken
    npm install
    ** modify contract ** 
    
## run
    - run geth
    geth --testnet --light --rpc --rpcapi eth,net,web3,personal

    - make eth account (another terminal tab)
    geth --testnet account new
    
    - eth 전송 
    생성된 account 계정으로 token deploy를 위한 gas비 등을 위한 eth 전송 (ex, 7bfcac1ca50e51d127d970046a0fefc87411da95 )

    - attach geth (another terminal tab && geth console)
    geth attach http://127.0.0.1:8545
    > personal.unlockAccount(eth.accounts[0])
    > eth.getBalance(eth.accounts[0])

## deploy
    truffle compile
    truffle migrate --network ropsten
