# Docker Toolbox for Windows
For Windows users not using Windows 10 Enterprise, Docker Toolbox is required for using Docker locally. There are several ways into install the tool and its dependencies: the binary installer, Chocolatey, or installing the individual tools with Chocolatey

## Installing Docker
### Docker Toolbox Installer
Simply [Download Docker Toolbox](https://docs.docker.com/toolbox/overview/) and run the installer. Let it install Oracle VirtualBox for you as well. You may need to enable Virtualization/VT-x in your system BIOS settings. Git for Windows and Kitematic are optional.

### Docker Toolbox with Chocolatey
1) Install Chocolatey
2) Install VirtualBox:
    >choco install virtualbox
3) Install Docker Toolbox
    >choco install docker-toolbox -ia /TASKS="desktopicon,modifypath,upgradevm"

### Docker Machine, CLI, and Compose
Docker Toolbox bundles several tools as one, and it is possible to install each individually:
1) Install Chocolatey
2) Install VirtualBox:
    >choco install virtualbox
3) Install Docker CLI
    >choco install docker-cli
4) Install Docker Machine
    >choco install docker-machine
5) Install Docker Compose
    >choco install docker-compose

## Starting Docker
With Docker Toolbox, the Docker Quickstart Terminal (or Kitematic) can start the Docker machine. This will boot up the virtual machine on VirtualBox and set environment variables for that terminal session. If using Docker Machine without the Toolbox installer, the machine and its environment variables must be started and set manually:
1) If using Docker the first time:
    >docker-machine create default
2) If the machine is successfully created already:
    >docker-machine start default
3) To set environment variables:
    >docker-machine env
4) Copy and run the output.

To avoid repeating the environment variable set-up each time, the variables can be set as permanent System Environment Variables.

## Docker Machine IP & Forwarding
When Docker runs natively, its server IP is localhost (127.0.0.1), but for Windows users with Docker Toolbox/Machine we must use the IP of the virtual machine. The `docker-machine env` command will show the current IP of the machine, but normally it will default to `192.168.99.100`. This means wherever `localhost` is used, a server running on a Docker container will be found on `192.168.99.100`.

For the sake of simplicity, this IP can be saved to a hosts file under a registered name, or a port can be forwarded by VirtualBox to localhost. For example, a PostgreSQL docker container running on `192.168.99.100:5432` can be forwarded to `localhost:5432` by opening VirtualBox, the Docker machine's Settings, Network > Adapter 1 > Advanced > Port Forwarding. There, add a new rule linking a the Host IP (127.0.0.1) and Host Port to the machine's Guest Port.

## Docker Machine Volume
Many Docker containers benefit from a shared folder linked between your host computer and container. Unfortunately Windows does not play well with Docker Volumes without some configuration. Most containers will not have permission to access or change a folder on Windows without VirtualBox's Shared Folders.

Open your Docker machine's Settings in Virtual Box and select Shared Folders. There add a new rule and select a folder path on your host computer. Keep or change the name, and select `Auto-mount` and `Make Permanent`. From now on when using the `-v` flag, the host folder location can be reached using `//<folder-name>/`

For example, with the Folder Path `C:\Users\Revature\postgres` named `postgres`, run a Docker container with a volumes flag as:
>docker run -p 5432:5432 -v //postgres:/var/lib/postgresql/data postgres
