# gunbot-xt-arm-docker

## FORK!
This is a fork of [jakkie/gunbot-xt-edition-docker](https://github.com/jakkie/gunbot-xt-edition-docker). This project is intended for running the arm version of gunbot in docker.

Compatible with Gunbot version : v12.9.1
`https://github.com/GuntharDeNiro/BTCT/releases`

## Install Docker

- Windows `https://docs.docker.com/toolbox/toolbox_install_windows/`
- Mac OS `https://docs.docker.com/docker-for-mac/install/`
- Linux Ubuntu `https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce`

## Building the Image

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

- To run a instance of gunbot.

```bash
docker run -d -p 5000:5000 --name gb gunbot
```
