#!/bin/bash

# Install

# curl https://clickhouse.com/ | sh
# sudo DEBIAN_FRONTEND=noninteractive ./clickhouse install

# Optional: if you want to use higher compression:
# echo "
# compression:
#     case:
#         method: zstd
# " | sudo tee /etc/clickhouse-server/config.d/compression.yaml

# sudo clickhouse start

# Load the data
# /mnt/ebs/ClickHouse_code_reading/ClickHouse/build/programs/clickhouse-client < init.sql
# /mnt/ebs/ClickHouse_code_reading/ClickHouse/build/programs/clickhouse-client < create.sql

# wget --continue 'https://datasets.clickhouse.com/hits_compatible/hits.tsv.gz'
# gzip -d hits.tsv.gz

# /mnt/ebs/ClickHouse_code_reading/ClickHouse/build/programs/clickhouse-client --time --query "INSERT INTO hits FORMAT TSV" < hits.tsv

# Run the queries

./run.sh

/mnt/ebs/ClickHouse_code_reading/ClickHouse/build/programs/clickhouse-client --query "SELECT total_bytes FROM system.tables WHERE name = 'hits' AND database = 'default'"
