#!/bin/bash

set -exu

curl https://latest.currency-api.pages.dev/v1/currencies/eur.json | jq ".eur.pln" > /tmp/eur-pln.txt