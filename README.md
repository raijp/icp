# Test Immediately
You need to install git and docker in advance.
<br>
<br>1. Run:
```
git clone https://github.com/raijp/icp.git && cd icp
docker build -t icp-test .
docker run -d --name icp-test icp-test dfx start
docker exec -it icp-test /bin/bash -c "npm i && dfx deploy && npm start"

## If "npm i" fail, you can run "docker exec -it icp-test npm cache clean --force" and try again.

## Delete container
# docker rm -f icp-test
```
2. Open a browser and navigate to http://localhost:8080/

# Tutorial of DFX (Canister SDK)
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
```
<br>You need rsync. If you are using an OS with apt-get installed, run:
```
apt-get install rsync
```
<br>Run:
```
cd ~/icp-test/hello && dfx deploy
```
