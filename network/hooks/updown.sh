#!/bin/bash

up() {
  iptables -t raw -I PREROUTING -i fwbr+ -j CT --zone 1
}

down() {
  post-down iptables -t raw -D PREROUTING -i fwbr+ -j CT --zone 1
}

