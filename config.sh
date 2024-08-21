jsonnet ./config.jsonnet \
    --ext-code config='{
        l2GenesisBlockNonce: "1",
        l2GenesisBlockGasUsed: "0",
    }' \
> config.json