<h1 style="color:#d9534f;">Meretrix-Coin</h1>

<p>
This package contains the full <strong>Meretrix-Coin</strong> smart contract.  
<span style="color:#5bc0de;">Meretrix</span> is a humorous take on the meme-coin trend, designed to parody the concept of meme coins in the cryptocurrency space.  
It also serves as <span style="color:#5cb85c;">proof of work</span> for advanced ERC-20 smart contract development.
</p>

---

<h2 style="color:#f0ad4e;">Contents</h2>

<ul>
  <li><code>Meretrix.sol</code> – the contract’s main code.</li>
  <li><code>price.sol</code> – the contract’s price calculation module.</li>
  <li><code>test_meretrixcoin_pytest.py</code> – PyTest integration tests (auto-installs dependencies).</li>
</ul>

---

<h2 style="color:#5bc0de;">Setup</h2>

<h3 style="color:#0275d8;">Option One – Run with Python directly (requires Python 3.8+)</h3>

```bash
python3 -m venv .venv
source .venv/bin/activate
```

<h3 style="color:#0275d8;">Option Two – Use Docker (no local setup required)</h3>

```bash
docker pull ghcr.io/meretrix/meretrix-coin:latest
docker run -it ghcr.io/meretrix/meretrix-coin:latest /bin/bash
```

<h3 style="color:#0275d8;">Option Three – Hardhat environment</h3>

```bash
npm install
npx hardhat node
npx hardhat compile
npx hardhat test
```

Detailed setup:
```bash
npm install --save-dev hardhat @nomicfoundation/hardhat-toolbox @openzeppelin/contracts
```

Create Hardhat project (if not already created):
```bash
npx hardhat init
```

Example `hardhat.config.js`:
```javascript
require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: {
    version: "0.8.21",
    settings: { optimizer: { enabled: true, runs: 200 } },
  },
  networks: {
    hardhat: {},
    // Example: Add your custom RPC for testing or deployment
    // sepolia: { url: process.env.ALCHEMY_URL, accounts: [process.env.PRIVATE_KEY] },
  },
};
```

Compile & Test:
```bash
npx hardhat compile
npx hardhat test
```

---

<h2 style="color:#5cb85c;">Running Tests</h2>

```bash
pytest -q test_meretrixcoin_pytest.py
```

The test suite automatically installs:

<ul>
  <li><code>web3</code></li>
  <li><code>eth-tester</code></li>
  <li><code>py-solc-x</code></li>
  <li><code>pytest</code></li>
</ul>

All tests execute against an <span style="color:#5bc0de;">in-memory Ethereum chain</span> (<code>EthereumTester + PyEVMBackend</code>).  
No external node, wallet, or RPC provider is required.

---

<h2 style="color:#f0ad4e;">Important Notes</h2>

<ul>
  <li>All required Python libraries are automatically installed at runtime if missing.</li>
  <li>Tests run fully isolated using an internal Ethereum test backend.</li>
</ul>

---

<h1 style="color:#d9534f;">MeretrixCoin – Test Environment and Python SDK Setup</h1>

<p>
This document explains, step by step, how to correctly set up the Python SDK for the MeretrixCoin project.  
The instructions are deliberately written for clarity and reliability, ensuring a consistent test environment across all systems.
</p>

---

<h2 style="color:#5bc0de;">Recommended Python SDK Version</h2>

Use <strong>Python 3.11.x</strong>.  
This version provides the best stability and compatibility with <code>web3</code>, <code>eth-tester</code>, and <code>py-solc-x</code>.

---

<h2 style="color:#0275d8;">Option 1 — Manual Setup (Most Reliable Method)</h2>

This approach works on Linux, macOS, and Windows (via WSL or PowerShell).

**Step 1 – Check Python version**
```bash
python3 --version
# or for Windows PowerShell
python --version
```

Ensure it outputs `Python 3.11.x`.  
If not, install from: [python.org](https://www.python.org/downloads/release/python-3110/)

**Step 2 – Create Virtual Environment**
```bash
python3 -m venv meretrix-env
source meretrix-env/bin/activate  # On Windows use: .\meretrix-env\Scripts\activate
```

**Step 3 – Upgrade pip**
```bash
pip install --upgrade pip
```

**Step 4 – Install Required Packages**
```bash
pip install web3 eth-tester py-solc-x pytest
```

**Step 5 – Verify Installations**
```bash
pip list
```

Ensure all required packages are listed.

**Step 6 – Run Tests**
```bash
pytest -q test_meretrixcoin_pytest.py
```

---

<h2 style="color:#0275d8;">Option 2 — Using Docker (No Local Setup Required)</h2>

**Step 1 – Pull the Docker Image**
```bash
docker pull ghcr.io/meretrix/meretrix-coin:latest
```

**Step 2 – Run the Docker Container**
```bash
docker run -it ghcr.io/meretrix/meretrix-coin:latest /bin/bash
```

**Step 3 – Run Tests Inside the Container**
```bash
pytest -q test_meretrixcoin_pytest.py
```

All tests will run in an isolated environment within the container.

---

<h2 style="color:#5cb85c;">Additional Notes</h2>

<ul>
  <li>Always activate your virtual environment before running tests.</li>
  <li>Ensure you are using the correct Python version (3.11.x recommended).</li>
  <li>For support or bug reports, open an issue in the MeretrixCoin GitHub repository.</li>
</ul>

<h3 style="color:#5bc0de;">Happy Coding.</h3>
