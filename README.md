# ps4-exploit-host-docker

This is a completely funcional Docker image with Al-Azif ps4-exploit-host application.

[![](https://images.microbadger.com/badges/version/romancin/ps4-exploit-host.svg)](https://microbadger.com/images/romancin/ps4-exploit-host "Docker image version")
[![](https://images.microbadger.com/badges/image/romancin/ps4-exploit-host.svg)](https://microbadger.com/images/romancin/ps4-exploit-host "Docker image size")
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=X2CT2SWQCP74U)

You can invite me a beer if you want ;) 

Based on Alpine Linux, which provides a very small size.

Tested and working on Synology and QNAP, but should work on any x86_64 devices.

It uses DNS 53/udp port, so probably you have it in use on the docker host. In this case you should use a docker network with macvlan driver. This way you can assign a different IP address for the container. I included a docker-compose.yaml file in the code to make it easier to deploy.

Sample run command:

docker run -d --name=ps4-exploit-host \
-e PGID=0 -e PUID=0 -e TZ=Europe/Madrid \
-p 53:53 \
-p 80:80 \
romancin/ps4-exploit-host:latest

or use 

docker-compose up -d 

after you edited the file previously to meet your needs.
