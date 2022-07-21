# Try it now locally (not on-chain)
You need to install git and docker in advance.
<br>
<br>1. Run:
```
git clone https://github.com/raijp/icp.git
cd icp/tutorial
docker build -t icp-test .
docker run -d -it -p 8080:8080 --name icp-test icp-test
docker exec -it icp-test /bin/bash -c "dfx start --background && dfx deploy"
docker exec -it icp-test /bin/bash -c "dfx start --background && npm start"

## If you want to delete the container, run:
# docker rm -f icp-test
```
2. Open a browser and navigate to http://localhost:8080/

# Tutorial for DFX (Canister SDK)
<br>Reference : https://internetcomputer.org/docs/current/developer-docs/quickstart/hello10mins
<br><br>To install dfx, run:
```
sh -ci "$(curl -fsSL https://smartcontracts.org/install.sh)"
```
To verify that dfx properly installed, run:
```
dfx --version
```
Note1: If you're gonna upgrade or remove SDK, see https://internetcomputer.org/docs/current/developer-docs/build/install-upgrade-remove/
<br><br>Note2: What is canisters? Canisters are the smart contracts installed on the IC.
<br><br>Note3: What is cycles? Cycles refer to a unit of measurement for resource consumption, typically for processing, memory, storage, and network bandwidth consumed on the IC. 

<br><b>Node.js</b>
<br>Node.js is necessary for rendering the frontend assets and so is necessary to complete this tutorial. 
<br><br>If you are using an OS with apt-get installed, run:
```
apt-get install npm
```
To verify that node and npm installed, run:
```
node --version
npm --version
```
<br><b>Create a project</b>
<br>Run:
```
mkdir ~/icp-test && cd ~/icp-test && dfx new hello
```
<br><b>Start the execution environment</b>
<br>Run:
```
cd ~/icp-test/hello && dfx start
```

<br><b>Deploy the dapp locally</b>
<br>Open an another termial and run below.
<br>Run:
```
cd ~/icp-test/hello && npm install
# If "npm i" fail, you should run "npm cache clean --force" and try again.
```
<br>You need rsync. If you are using an OS with apt-get installed, run:
```
apt-get install rsync
```
<br>Run:
```
cd ~/icp-test/hello && dfx deploy && npm start
```

<br><b>Test the dapp locally via the browser</b>
<br>Open the browser and navigate to http://localhost:8080/

<br><b>Test the dapp locally via the command line</b>
<br>Run:
```
dfx canister call hello_backend greet everyone
```

<br><b>Commands to see wallet and balance</b>
```
# See ICP wallet.
dfx ledger account-id
# See ICP balance.
dfx ledger --network ic balance
# See IC wallet.
dfx identity --network ic get-wallet
# See IC balance.
dfx wallet --network ic balance
# See IC status (including balance)
dfx canister --network=ic status <canister id>
```
