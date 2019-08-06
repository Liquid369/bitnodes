#!/bin/bash
# --- bitcoin mainnet: a0431619 (db = 0) ---
python -u crawl.py conf/crawl.a0431619.conf master > log/crawl.a0431619.master.out 2>&1 &
python -u crawl.py conf/crawl.a0431619.conf slave > log/crawl.a0431619.slave.1.out 2>&1 &
python -u crawl.py conf/crawl.a0431619.conf slave > log/crawl.a0431619.slave.2.out 2>&1 &
python -u crawl.py conf/crawl.a0431619.conf slave > log/crawl.a0431619.slave.3.out 2>&1 &

python -u ping.py conf/ping.a0431619.conf master > log/ping.a0431619.master.out 2>&1 &
python -u ping.py conf/ping.a0431619.conf slave > log/ping.a0431619.slave.1.out 2>&1 &
python -u ping.py conf/ping.a0431619.conf slave > log/ping.a0431619.slave.2.out 2>&1 &
python -u ping.py conf/ping.a0431619.conf slave > log/ping.a0431619.slave.3.out 2>&1 &
python -u ping.py conf/ping.a0431619.conf slave > log/ping.a0431619.slave.4.out 2>&1 &
python -u ping.py conf/ping.a0431619.conf slave > log/ping.a0431619.slave.5.out 2>&1 &
python -u ping.py conf/ping.a0431619.conf slave > log/ping.a0431619.slave.6.out 2>&1 &

python -u resolve.py conf/resolve.a0431619.conf > log/resolve.a0431619.out 2>&1 &

python -u export.py conf/export.a0431619.conf > log/export.a0431619.out 2>&1 &

python -u seeder.py conf/seeder.a0431619.conf > log/seeder.a0431619.out 2>&1 &

python -u pcap.py conf/pcap.a0431619.conf > log/pcap.a0431619.1.out 2>&1 &
python -u pcap.py conf/pcap.a0431619.conf > log/pcap.a0431619.2.out 2>&1 &
python -u pcap.py conf/pcap.a0431619.conf > log/pcap.a0431619.3.out 2>&1 &
