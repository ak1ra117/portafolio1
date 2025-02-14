# Basic and Useful Commands in Docker

## Index

1. [**Network Tools**](#network-tools)
    - [Linux](#linux)
    - [Windows PowerShell](#windows-powershell)
2. [**Docker**](#docker)
    - [Working with Container Registry Images](#working-with-container-registry-images)
    - [Building Images](#building-images)
    - [Advanced Commands for Images](#advanced-commands-for-images)
    - [Basic Container Management Commands](#basic-container-management-commands)
    - [Working with Networks and Volumes](#working-with-networks-and-volumes)
    - [Interacting with Containers](#interacting-with-containers)
    - [Docker Compose](#docker-compose)
    - [Network and Volume Management](#network-and-volume-management)
    - [Commands for Information and Statistics](#commands-for-information-and-statistics)
    - [Commands for Security and Access Control](#commands-for-security-and-access-control)
    - [Commands for Advanced Configurations](#commands-for-advanced-configurations)

## Network Tools

### Linux 
1. Install this tool to manage network options:
```shell
sudo apt install net-tools 
sudo apt-get install telnet
```
* Check listening ports:
```shell
netstat -n --all --tcp
```
* Find a specific port:
```shell
sudo lsof -i -P -n | grep 9000
```
* Testing socket with telnet (format: telnet ipaddress port):
```shell
telnet localhost 5433
```

### Windows PowerShell 

* Check listening ports:
```powershell
Get-NetTCPConnection
```
* Get all TCP connections:
```powershell
$connections = Get-NetTCPConnection
```
* Filter connections in 'Listen' or 'Established' state:
```powershell
$filteredConnections = $connections | Where-Object {($_.State -eq 'Listen') -or ($_.State -eq 'Established')}
```
* Get detailed information of each connection:
```powershell
$connectionDetails = $filteredConnections | ForEach-Object {
    $localPort = $_.LocalPort
    $remotePort = $_.RemotePort
    $state = $_.State
    $processId = $_.OwningProcess
    $process = Get-Process -Id $processId
    $processName = $process.ProcessName

    [PSCustomObject]@{
        LocalPort = $localPort
        RemotePort = $remotePort
        State = $state
        Application = $processName
    }
}
```
* Display the information in the console:
```powershell
$connectionDetails
```
* Find a specific port:
```powershell
Get-NetTCPConnection | Where-Object {$_.LocalPort -eq 9000}
```
* Testing socket with telnet (format: telnet ipaddress port):
```powershell
Test-NetConnection -ComputerName localhost -Port 5433
```

## **Docker**
### Working with Container Registry Images

- **Download an image from Docker Hub:**
```shell 
docker pull image_name
docker run -d -p 80:80 docker/getting-started
```
- **List local images:**
```shell 
docker image ls
```
- **Remove all stopped containers:**
```shell
docker container prune
```
- **Remove all unused images:**
```shell
docker image prune -a
```
- **Remove all unused networks:**
```shell
docker network prune
```
- **Remove all unused volumes:**
```shell
docker volume prune
```
- **Stop and remove all running containers:**
```shell
docker rm -f $(docker ps -aq)
```

### Building Images

- **Build an image from a Dockerfile:**
```shell
docker build -t billingapp --no-cache --build-arg JAR_FILE=target/*.jar .
```
- **Build an image with a specific context:**
```shell
docker build -t image_name -f path/Dockerfile .
```

### Advanced Commands for Images

- **Save an image to a tar file:**
```shell
docker save -o image.tar image_name
```
- **Load an image from a tar file:**
```shell
docker load -i image.tar
```
- **Inspect an image:**
```shell
docker image inspect image_name
```

### Basic Container Management Commands

- **Restart a container:**
```shell
docker restart container_name
```
- **Attach to a running container:**
```shell
docker attach container_name
```
- **Rename a container:**
```shell
docker rename old_name new_name
```

### Working with Logs

- **View logs from a container:**
```shell
docker logs container_name
```
- **Follow live logs:**
```shell
docker logs -f container_name
```
- **Filter logs by timestamp:**
```shell
docker logs --since 1h container_name
```

### Monitoring and Debugging

- **Monitor resource usage of containers:**
```shell
docker stats
```
- **Inspect network details of a container:**
```shell
docker network inspect network_name
```
- **Run an interactive shell inside a running container:**
```shell
docker exec -it container_name /bin/sh
```

### Docker Compose

- **Rebuild and restart services in Docker Compose:**
```shell
docker-compose up --build
```
- **Run a one-time command in a service:**
```shell
docker-compose run service_name command
```
- **Remove all unused Docker Compose containers, networks, and volumes:**
```shell
docker-compose down -v
```
