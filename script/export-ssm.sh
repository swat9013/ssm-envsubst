#!/bin/bash

aws ssm  get-parameters-by-path --with-decryption --path / | jq -r -c '.Parameters[]|"export \(.Name|split("/")[-1])=\"\(.Value)\""'