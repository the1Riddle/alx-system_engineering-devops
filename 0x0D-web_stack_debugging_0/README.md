# Web stack debugging #0

## <p align="center">![PIC](https://github.com/the1Riddle/alx-system_engineering-devops/assets/125451537/832a3d22-0a30-4f2a-85da-eb63bf7580c8)</p>

Docker:
-----------

What is Docker and why is it popular?
-----------------------------------------

- Docker is a platform and set of tools designed to make it easier to create, deploy, and run applications in isolated environments called containers. Containers allow developers to package an application and its dependencies into a single unit that can run consistently across different computing environments.<br>

	Let’s first pull a Docker image and run a container:
 
	```
		vagrant@ubuntu-xenial:~$ docker ps
		CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
		vagrant@ubuntu-xenial:~$ docker run -d -ti ubuntu:16.04
		Unable to find image 'ubuntu:16.04' locally
		16.04: Pulling from library/ubuntu
		34667c7e4631: Pull complete
		d18d76a881a4: Pull complete
		119c7358fbfc: Pull complete
		2aaf13f3eff0: Pull complete
		Digest: sha256:58d0da8bc2f434983c6ca4713b08be00ff5586eb5cdff47bcde4b2e88fd40f88
		Status: Downloaded newer image for ubuntu:16.04
		e1fc0d4bbb5d3513b8f7666c91932812da7640346f6e05b7cfc3130ddbbb8278
		vagrant@ubuntu-xenial:~$ docker ps
		CONTAINER ID        IMAGE               COMMAND             CREATED              STATUS              PORTS               NAMES
		e1fc0d4bbb5d        ubuntu:16.04        "/bin/bash"         About a minute ago   Up About a minute                       keen_blackwell
		vagrant@ubuntu-xenial:~$
	```
 
	Note that ``docker`` command will pull the Ubuntu docker container image from the Internet and run it. I let you look at the meaning of the flags using the comm	and ``docker run --help``, the main idea is that it keeps the container up and running.

	To execute a command on the Docker container, use ``docker exec:``
	```
	vagrant@ubuntu-xenial:~$ docker exec -i e1fc0d4bbb5d hostname
	e1fc0d4bbb5d
	vagrant@ubuntu-xenial:~$ hostname
	ubuntu-xenial
	vagrant@ubuntu-xenial:~$
	```
	If you want to connect to your Docker container and use Bash, you need to use ``docker exec -ti``:
	```
	vagrant@ubuntu-xenial:~$ docker exec -ti e1fc0d4bbb5d /bin/bash
	root@e1fc0d4bbb5d:/# echo "I am in $(hostname) Docker container"
	I am in e1fc0d4bbb5d Docker container
	root@e1fc0d4bbb5d:/# exit
	exit
	vagrant@ubuntu-xenial:~$
	```
	If you want to stop a container, use ``docker stop``:
 
	```
	vagrant@ubuntu-xenial:~$ docker ps
	CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
	e1fc0d4bbb5d        ubuntu:16.04        "/bin/bash"         5 minutes ago       Up 5 minutes                            keen_blackwell
	vagrant@ubuntu-xenial:~$ docker stop e1fc0d4bbb5d
	e1fc0d4bbb5d
	vagrant@ubuntu-xenial:~$ docker ps
	CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
	vagrant@ubuntu-xenial:~$
	```

How to installing Docker
-----------------------
- For this project you will be given a container which you can use to solve the task. If you would like to have Docker so that you can experiment with it and/or solve this problem locally, you can install it on your machine, your Ubuntu 14.04 VM, or your Ubuntu 16.04 VM if you upgraded.
	- [Mac OS](https://docs.docker.com/desktop/install/mac-install/)
	- [Windows](https://docs.docker.com/desktop/install/windows-install/)
	- [Ubuntu 14.04](https://www.liquidweb.com/kb/how-to-install-docker-on-ubuntu-14-04-lts/)(Note that Docker for Ubuntu 14 is deprecated and you will have to make some adjustments to the instructions when installing)
	- [Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04)
	- For Zorin use this command:
	```
		sudo apt update && sudo apt install -y docker-compose
	```
