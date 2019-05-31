# Revature (Windows) Development Environment
## Getting Started
To maximize resources and minimize troubleshooting, perform a clean install or refresh of Windows. Update your system, [Enable VT-x in BIOS](https://www.wikihow.tech/Enable-VT%E2%80%90x-in-BIOS) if possible, and uninstall all unnecessary programs. 

You can remove many pre-installed apps using the [RemoveDefaultApps](./RemoveDefaultApps.ps1) script in this repository.

Be sure to [enable file extensions](https://www.thewindowsclub.com/show-file-extensions-in-windows) in Windows Explorer.

## Week 1: Java
For the first week, we will need the following tools installed:
* [Git for Windows](https://git-scm.com)
* [Oracle JDK 8](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
* [Apache Maven](https://maven.apache.org/)
* [Spring Tool Suite](https://spring.io/tools3/sts/all) 

Either manually download and install each tool, or follow the instructions below using the Chocolatey package manager for Windows. 
1) Install [Chocolatey](https://chocolatey.org)
     1) Open `Powershell` as an administrator.
     2) Run:
         >Set-ExecutionPolicy AllSigned
     3) Agree to all changes
     4) Run:
         >Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
2) Open a new `Powershell` window as an administrator and run the following commands:
3) To install [Git for Windows](https://git-scm.com):
    >choco install git
4) To install [Oracle JDK 8](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html):
    >choco install jdk8
5) To install [Apache Maven](https://maven.apache.org/):
    >choco install maven
6) To install [Spring Tool Suite](https://spring.io/tools3/sts/all):
    >choco install springtoolsuite

### Summary
To confirm all tools are properly installed and configured, be sure the following commands return no errors:
>git -v

>javac -version

>mvn -v

You should pin the shortcut to STS. All above tools can be installed at once for convenience using the following command:
>choco install -y git jdk8 maven springtoolsuite

## Week 2: SQL

