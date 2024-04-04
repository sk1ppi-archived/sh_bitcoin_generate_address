# Cryptographic Key Generation Script

This script is designed to generate ECDSA and Bitcoin cryptographic keys using OpenSSL. It creates a pair of ECDSA keys (private and public) and derives Bitcoin-compatible key pairs from the ECDSA private key.

## Prerequisites

To run this script, you need to have OpenSSL installed on your system. OpenSSL is used for the generation of the keys and for certain manipulations required to derive the Bitcoin keys.

### Installing OpenSSL

- On Ubuntu/Debian-based systems:

  ```bash
  sudo apt-get update
  sudo apt-get install openssl
  ```

- On RedHat/Fedora-based systems:

  ```bash
  sudo yum update
  sudo yum install openssl
  ```

- On macOS (using Homebrew):

  ```bash
  brew install openssl
  ```

## How to Use

1. Ensure you have OpenSSL installed and accessible from your command line.
2. Place the script `main.sh` in your desired directory.
3. Open a terminal and navigate to the directory where `main.sh` is located.
4. Make the script executable by running:

   ```bash
   chmod +x main.sh
   ```

5. Execute the script:

   ```bash
   ./main.sh
   ```

## What the Script Does

The script performs the following operations:

1. Generates an ECDSA private key using the `secp256k1` curve, which is commonly used in Bitcoin cryptography.
2. Extracts the public key from the generated ECDSA private key.
3. Derives a Bitcoin-compatible private key from the ECDSA private key.
4. Derives a Bitcoin-compatible public key from the ECDSA private key.

## Output

After running the script, you will find four files in the directory:

- `ECDSA.priv` - The ECDSA private key.
- `ECDSA.pub` - The ECDSA public key.
- `BITCOIN.priv` - The Bitcoin-compatible private key derived from the ECDSA private key.
- `BITCOIN.pub` - The Bitcoin-compatible public key derived from the ECDSA private key.

## Security Notice

Ensure that you securely store the generated private keys (`ECDSA.priv` and `BITCOIN.priv`). Exposure of these keys can compromise any cryptographic system or currency wallet that uses them.