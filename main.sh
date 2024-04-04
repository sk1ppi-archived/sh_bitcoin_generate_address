!/bin/sh

declare -r BASE58_CHARSET="123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"


ECDSA_PRIV="ECDSA.priv"
ECDSA_PUB="ECDSA.pub"

BITCOIN_PUB="BITCOIN.pub"
BITCOIN_PRIV="BITCOIN.priv"

openssl ecparam -genkey -name secp256k1 -rand /dev/random -out $ECDSA_PRIV
openssl ec -in $ECDSA_PRIV -pubout -out $ECDSA_PUB

openssl ec -in $ECDSA_PRIV -outform DER | tail -c +8 | head -c 32 | xxd -p -c 32 > $BITCOIN_PRIV
openssl ec -in $ECDSA_PRIV -pubout -outform DER | tail -c 65 | xxd -p -c 65 > $BITCOIN_PUB