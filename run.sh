if type git > /dev/null; then
    git clone https://github.com/badaiv/bootstrap.git ~/bootstrap
    chmod +x ~/bootstrap
    cd ~/bootstrap
    ./bootstrap.sh
else
    curl -LO https://github.com/badaiv/bootstrap/archive/master.zip
    unzip master.zip
    rm -rf master.zip
    mv bootstrap-master ~/bootstrap
    chmod +x ~/bootstrap
    cd ~/bootstrap
    ./bootstrap.sh
fi
