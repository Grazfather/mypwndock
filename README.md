# PwnDock

This is my slightly customized version of
[pwndock](https://github.com/Grazfather/pwndock). That image is pushed to
docker cloud so this can build rather quickly.

## Customization
To customize this image, just fork this repo and edit _Dockerfile_ as you like. Take a peek at github.com/Grazfather/pwndock/blob/master/Dockerfile to see what's already included in the base image.

The management scripts call the image and the container both 'gpwn'. A simple search/replace can change that.

## Installation
1. Install Docker:
  * `brew cask install docker` on OSX.
  * https://docs.docker.com/install/linux/docker-ce/ubuntu/ for Ubuntu.
  * https://docs.docker.com/install/ to find the instructions if you're not using one of these two.
2. Build: `./build` -- This will pull the base image 'grazfather/pwndock' from docker hub and apply the customizations in _Dockerfile_ on top.

## Running it
Management:

* `start` - Start up the built image.
* `stop` - Stop the running container.
* `connect [COMMAND]` - Connect to a running container. Starts a `tmux` session by default.
