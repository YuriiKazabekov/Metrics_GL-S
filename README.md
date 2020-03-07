 <h1 align="center"> METRICS
 </h1>

It's repo with files for GL DevOps ProCamp Entry task



# Files
[`metrics`](https://github.com/YuriiKazabekov/metrics_gl/blob/master/metrics) - it's python script which prints basic information about your OS to console. Metrics based on [`psutil`](https://psutil.readthedocs.io/en/latest/) library (python system and process utilities) is a cross-platform library for retrieving information on running processes and system utilization (CPU, memory, disks, network, sensors) in Python. It is useful mainly for system monitoring, profiling, limiting process resources and the management of running processes. It implements many functionalities offered by UNIX command line tools such as: ps, top, lsof, netstat, ifconfig, who, df, kill, free, nice, ionice, iostat, iotop, uptime, pidof, tty, taskset, pmap. psutil currently supports the following platforms:
- Linux
- Windows
- macOS
- FreeBSD, OpenBSD, NetBSD
- Sun Solaris
- AIX

The script should accept a single parameter to specify which metrics set to print:
- cpu - prints CPU metrics
- mem - prints RAM metrics

[`Dockerfile`](https://github.com/YuriiKazabekov/metrics_gl/blob/master/Dockerfile) - is a text document that contains all the commands a user could call on the command line to assemble an image.

## Usage
For running this script you need to change your work directory and run metrics with one of parameters
```
$ cd /etc/myscripst
$ ./metrics cpu
```
in result you will get something like that:
```
root@e5946e6c7fc8:/etc/myscripts# ./metrics cpu
system.cpu.user 433.99
system.cpu.nice 0.08
system.cpu.system 233.17
system.cpu.idle 1014080.74
system.cpu.iowait 64.92
system.cpu.irq 0.0
system.cpu.softirq 19.31
system.cpu.steal 0.0
system.cpu.guest 0.0
system.cpu.guest_nice 0.0
```

## Install

You can download docker image with metrics utility from [`GitHub`](https://github.com/YuriiKazabekov/metrics_gl/packages) or [`DockerHub`](https://hub.docker.com/r/ykaz1291/metrics)

Also you can run it in your computer, virtual machine or container after installing requirements from [`requirements.txt`](https://github.com/YuriiKazabekov/metrics_gl/blob/master/requirements.txt) and and copying [`the script file`](https://github.com/YuriiKazabekov/metrics_gl/blob/master/metrics) to your OS.

