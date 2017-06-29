# Raspberry Pi temperature sensor script

Simple python script for commecting a DS18B20 temperature sensor to a Raspberry Pi. It can print either the temperature (configurable for Celcius or Farenheit) or the temperature and a timestamp.


## This is still under construction. Tread lightly.



## Getting Started

I followed this guide to set up the temperature sensor, if you have not already. It can be found here: 
		
[Adafruit Guide](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-11-ds18b20-temperature-sensing/hardware)


### Prerequisites

You will need:   
* a Rasperry Pi with SSH access
* a DS18B20 temperature sensor


### Installing

You'll want to install modprobe.

```
$ apt-get install modprobe
```

If you want to add this as a cron job, you can use ```thermcron.sh``` (or see below) to run it as often as you want.


```
python /root/thermo.py >> /root/temp_log.csv
```


## Deployment

- Wired internet is usually more stable than a wifi dongle

## Built With
* [Sublime Text](https://www.sublimetext.com/)

## Contributing

So far it's just me, but if you want to get in on this, give me a shoutout!

## Authors

* **David Sopkin**  - [dsopkin](https://github.com/dsopkin/)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

