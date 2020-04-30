#!/bin/sh

CONFIG_DIR="$(dirname "$0")/../config"
echo "CONFIG_DIR: ${CONFIG_DIR}"

for config_file in "${CONFIG_DIR}"/*
do
  echo "* check config file: $(basename "${config_file}")"
  nichtparasoup config --check "$config_file" || exit $?
done

