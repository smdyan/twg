#!/bin/bash
wg-quick up ./wg0.conf
tail -f /dev/null
