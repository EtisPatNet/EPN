#!/usr/bin/env bash
#
# Copyright (c) 2019 The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C.UTF-8

export CONTAINER_NAME=ci_native_ubsan
export PACKAGES="clang-8 llvm-8 python3-zmq qtbase5-dev qttools5-dev-tools libevent-dev bsdmainutils libboost-filesystem-dev libboost-test-dev libboost-thread-dev libdb5.3++-dev libminiupnpc-dev libzmq3-dev libqrencode-dev"
export DEP_OPTS="NO_UPNP=1 DEBUG=1"
export GOAL="install"
export BITCOIN_CONFIG="--enable-zmq --enable-reduce-exports --enable-crash-hooks --with-sanitizers=undefined --enable-suppress-external-warnings CC=clang-15 CXX=clang++-15"
export PYZMQ=true
export RUN_SYMBOL_TESTS=false
