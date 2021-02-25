#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Feb 23 16:17:43 KST 2021
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto a075703a50f9434e9e61a6e557739950 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_dongwon_ram_behav xil_defaultlib.tb_dongwon_ram xil_defaultlib.glbl -log elaborate.log"
xelab -wto a075703a50f9434e9e61a6e557739950 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_dongwon_ram_behav xil_defaultlib.tb_dongwon_ram xil_defaultlib.glbl -log elaborate.log
