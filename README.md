# Raspberry Pi temperature sensor script 
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Build Status](https://travis-ci.org/boennemann/badges.svg?branch=master)](https://travis-ci.org/boennemann/badges)

Simple python script for commecting a DS18B20 temperature sensor to a Raspberry Pi. 
It can print either the temperature (configurable for Celcius or Farenheit) or the temperature and a timestamp.


## This is still under construction. Tread lightly.



## Getting Started


### Prerequisites

You will need:   
* a Rasperry Pi with SSH access
* a DS18B20 temperature sensor

### Set up temperature sensor

I followed this guide to set up the temperature sensor, if you have not already. It can be found here: 
		
[Adafruit Guide](http://www.danielhansen.net/2013/03/raspberry-pi-temperature-logging-using.html)

this one too

[Simple guide](http://www.danielhansen.net/2013/03/raspberry-pi-temperature-logging-using.html)

### Installing

1. Make sure your Pi is updated, then install modprobe.

```
$ apt-get update 

$ apt-get install modprobe
```

2. Connect your DS18B20 temperature sensor to the Raspberry Pi

3. Find the serial of the temperature sensor
```
cd /sys/bus/w1/devices
ls
```

This will list all of the devices in the GPIO board. 

Change to the one that ends in ```28-xxx```

then type ```cat 28-xxx``` to make sure it's collecting data.



## Deployment Notes

- Wired internet is usually more stable than a wifi dongle

- If you want to add this as a cron job, you can use ```thermcron.sh``` (or see below) to run it as often as you want.


```
python /root/thermo.py >> /root/temp_log.csv
```

## Built With
* [Sublime Text](https://www.sublimetext.com/)

## Contributing

If you want to get in on this, give me a shout!
## Authors

* **David Sopkin**  - [dsopkin](https://github.com/dsopkin/)

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details


## Issues

Please feel free to report bugs and request features in the [issues](https://github.com/dsopkin/raspi_temp/issues) section.

