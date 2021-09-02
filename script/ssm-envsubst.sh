#!/bin/bash

eval "$(/bin/bash script/export-ssm.sh)"
envsubst "$@"