# Firewall

In computing, a firewall is a network security system that monitors and controls incoming and outgoing network traffic based on predetermined security rules. A firewall typically establishes a barrier between a trusted network and an untrusted network, such as the Internet.

More Info
---------------

As explained in the [web stack debugging](https://github.com/the1Riddle/alx-system_engineering-devops/tree/master/0x0E-web_stack_debugging_1#web-stack-debugging-1)telnet is a very good tool to check if sockets are open with telnet IP PORT. For example, if you want to check if port 22 is open on web-02 or on  your web server:

        user@ubuntu$ telnet web-02.holberton.online 22
        Trying 54.89.38.100...
        Connected to web-02.holberton.online.
        Escape character is '^]'.
        SSH-2.0-OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.8

        Protocol mismatch.
        Connection closed by foreign host.
        user@ubuntu$

We can see for this example that the connection is successful: Connected to web-02.holberton.online.
<br>
Now let’s try connecting to port 2222:

        user@ubuntu$ telnet web-02.holberton.online 2222
        Trying 54.89.38.100...
        ^C
        user@ubuntu$

We can see that the connection never succeeds, so after some time I just use ctrl+c to kill the process.
<br>
This can be used for any debugging situation where two pieces of software need to communicate over sockets.

Warning!
---------------

> [!WARNING]<br>
> **Containers on demand cannot be used for this project (Docker container limitation)**
<br>
> **Be very careful with firewall rules! For instance, if you ever deny port 22/TCP and log out of your server, you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your server.**

