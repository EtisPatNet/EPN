#!/usr/bin/env bash
# Copyright (c) 2018-2020 The Dash Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.
# use testnet settings,  if you need mainnet,  use ~/.etispatnet/etispatnetd.pid file instead
export LC_ALL=C

etispatnet_pid=$(<~/.etispatnet/testnet3/etispatnetd.pid)
sudo gdb -batch -ex "source debug.gdb" etispatnetd ${etispatnet_pid}
