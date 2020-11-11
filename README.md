# gunbot-rpi-arm-docker

## FORK!
This is a fork of [jakkie/gunbot-xt-edition-docker](https://github.com/jakkie/gunbot-xt-edition-docker). This project is intended for running the arm version of gunbot in docker on Raspbian image for Raspberry Pi.

Compatible with Gunbot version : v18.8.8
`https://github.com/GuntharDeNiro/BTCT/releases`

## Install Docker

- Raspbian :
```bash
curl -sSL https://get.docker.com | sudo sh
sudo usermod -aG docker pi
sudo reboot
```

## Building the Image

### Cloning the repository

`sudo git clone https://github.com/GTrannoy/gunbot-rpi-arm-docker.git`

### Installing the container

- Build the container from the repository.

```bash
docker build -t gunbot .
```

- To build with a specific gunbot version (v10 or later). Just change the gunbot version to the version you want. To see which versions are available go to `https://github.com/GuntharDeNiro/BTCT/releases`

```bash
docker build -t gunbot --build-arg gunbot_version=1291 .
```

### Running the container

- To run a instance of gunbot:

```bash
docker run -d -p 5000:5000 --name gb gunbot
```
- To create a service in Swarm mode:

```bash
docker service create --constraint node.role==worker -p 5050:5000 --network=networkpi --name gunbot --mount type=volume,source=~pi/gunbot_cfg/config.js,destination=/app/config.js GTrannoy/gunbot-rpi-edition-docker
```
