Raspberry playground
====================

This is the home for some of my Raspberry Pi hobby projects.


Pi soundbar
-----------

My Raspberry Pi soundbar is a music box with basic functions on a remote control and an advanced GUI running in a web browser.
The Raspberry Pi streaming sound box is based on [Volumio](http://volumio.org/), a specialized distribution for high quality sound with a nice GUI. I've chosen a soundbar from [Maxell](http://mgb.maxell.eu/de-ch/products/maxell-digital-soundbar-tv-speaker-mxsb-252-571.aspx) with HDMI inputs and a tiny remote control. The sound quality is not really audiophile, but good enough for my home
office desk.

To use the additional keys of the soundbar remote control, I've connected an IR diode to the Pi as [described here](http://wolf-u.li/4806/verwendung-des-tsop4838-am-gpio-header-des-raspberry-pi-unter-raspbmc/) nicely.

This [Ansible playbook](ansible/raspian/volumio.yml) adds LIRC with a configuration for the Maxell remote control to the Volumio based Raspberry. 


Temperature logger
------------------

A while ago I've bought a TL500 temperature logger kit built by [AREXX Engineering](http://www.arexx.com/). However, all Linux support they provide is a single statically linked binary,
which can send data to a remote web server. So I decided to write a plugin for [collectd](http://collectd.org), my favorite tool to collect system information. In this setup, collectd writes RRD files (greetings to my fellow student Tobi Öttiker!), from which I locally generate temperature graphs.

See [arexx-multilogger-collectd-plugin](https://github.com/pka/arexx-multilogger-collectd-plugin) repo.


Pizol webcam
------------

One of my oldest project is a webcam showing the weather (flight conditions!) of my home mountain [Pizol](http://pizol.com). I've bought an old digital camera years ago and finally found the perfect place for it.

These [Ansible playbook](ansible/arch/pizol.yml) configures a Raspberry Pi with an [Arch Linux ARM](http://archlinuxarm.org/platforms/armv6/raspberry-pi) distribution with temperature logger and camera software.


License
-------

These projects are licensed under the terms of the MIT license.
