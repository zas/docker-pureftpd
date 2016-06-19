ftp server
=========

ftp server based on `pure-ftpd`. Make sure to connect using `passive` mode in the client. 

`docker build --rm -t ftpserver .`

`docker run -d -p 20-21:20-21 -p 30000-30009:30000-30009 --name ftpserver ftpserver`


Example of ftp session:

	ftp 192.168.59.103
	Connected to 192.168.59.103.
	220---------- Welcome to Pure-FTPd [privsep] ----------
	220-You are user number 1 of 50 allowed.
	220-Local time is now 18:58. Server port: 21.
	220-IPv6 connections are also welcome on this server.
	220 You will be disconnected after 15 minutes of inactivity.
	Name (192.168.59.103:jonas): someone
	331 User someone OK. Password required
	Password: 
	230 OK. Current directory is /home/someone
	Remote system type is UNIX.
	Using binary mode to transfer files.
	ftp> passive
	Passive mode: off; fallback to active mode: off.
	ftp> ls
	200 PORT command successful
	150 Connecting to port 64265
	226-Options: -l 
	226 0 matches total
	ftp> mkdir in
	257 "in" : The directory was successfully created
	ftp> dir
	200 PORT command successful
	150 Connecting to port 64266
	drwxr-xr-x    2 someone    someone          4096 Sep 17 18:58 in
	226-Options: -l 
	226 1 matches total



Debugging
---------

Run the server in interactive mode: `docker run -t -i ftpserver /bin/bash`
