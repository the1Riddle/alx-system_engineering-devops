#       Load Balancer

- Ever wonder how Facebook, Linkedin, Twitter and other web giants are handling such huge amounts of traffic? They don’t have just one server, but tens of thousands of them. In order to achieve this, web traffic needs to be distributed to these servers, and that is the role of a load-balancer.

## <p align="center">![imag](https://github.com/the1Riddle/alx-system_engineering-devops/assets/125451537/91847933-1601-4f4c-a09d-380e42482617)</p>

Background Context
-------------------

- Our web stack is being enhanced to incorporate [redundancy](https://intranet.alxswe.com/rltoken/xnAaJdhmAxx7PoH3l6EwDg) for our web servers. This improvement will enable us to accommodate increased traffic by doubling the number of web servers, thereby enhancing the reliability of our infrastructure. In the event of a failure in one web server, a second one will remain operational to handle requests.

> In this project, Bash scripts is writen to automate the work. All scripts are designed to configure a brand new Ubuntu server to match the task requirements.

Resource
-------------

If you are looking up to install Debian/Ubuntu HAProxy packages you can click on this:
	[Packages](https://intranet.alxswe.com/rltoken/2VRAgtKKR9g6Xfb0xzGiSg)
