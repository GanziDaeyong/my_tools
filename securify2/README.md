Forked from Securify2

### install

ubuntu18.04 기준 **AMD기준 / ARM아님!**

```
apt-get update
apt-get install -y software-properties-common locales

apt-get update
apt-get install -y wget gdebi


curl -L https://github.com/ethereum/solidity/releases/download/v0.5.12/solc-static-linux > /usr/bin/solc-0.5.12
chmod +x /usr/bin/solc-0.5.12
ln -s /usr/bin/solc-0.5.12 /usr/local/bin/solc


wget https://github.com/souffle-lang/souffle/releases/download/1.6.2/souffle_1.6.2-1_amd64.deb -O /tmp/souffle.deb
gdebi --n /tmp/souffle.deb

apt-get -y install graphviz python3.7 python3.7-venv python3-pip curl

python3.7로 venv활성화

cd <securify_root>/securify/staticanalysis/libfunctors
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`pwd`

pip install --upgrade pip
pip install -r requirements.txt
pip install -e .

export LD_LIBRARY_PATH=/home/securify2/securify/staticanalysis/libfunctors

securify ./securify/staticanalysis/testContract.sol

```
