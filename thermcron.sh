#!/bin/sh

# Cronjob script to run as often as you want, will add a line to the CSV.

python /root/thermo.py >> /root/temp_log.csv
