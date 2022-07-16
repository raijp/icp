# Test Immediately
Run:
```
git clone https://github.com/raijp/icp.git
cd icp
docker build -t icp-test .
docker run -d -p 8000:8000 --name icp-test icp-test dfx start
## For checking
# docker exec -it icp-test /bin/bash
## Delete container
# docker rm -f icp-test

```

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
mkdir ~/icp-test && cd ~/icp-test
dfx new hello
cd hello
```
<br><b>Start the execution environment</b>
<br>Run:
```
dfx start
```
