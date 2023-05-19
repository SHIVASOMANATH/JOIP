DOCKER JOIP TASK
----------------
### DAY1
 * Run Hello World docker container and observe the container status
### task 1
`$ docker container run -d -P --name Hello hello-world`
   ```
   $ docker container ls 
   $ docker container ls -a
  ```
   ![refer](/images/1.PNG)

### task 2  
 *  Check the docker images and write down the size of hello-world images

  `$ docker images`

   ![refer](/images/2.PNG)
  
--- hello-world   latest    9c7a54a9a43c   2 weeks ago   13.3kB

### task 3
 * Run the nginx container with name as nginx1 and expose 8080 port on docker host 
   
   `$ docker container run -d -p 8080:80 --name nginx1 nginx`
   ![preview](/images/3.PNG)
   ![preview](/images/4.PNG)

### task 4
 * Explain docker container lifecycle
   ```
   $ docker container pause nginx1
   $ docker container unpause nginx1
   $ docker container stop nginx1
   $ docker container start nginx1
   $ docker container rm -f nginx1
   ````

   ![preview](/images/5.PNG)
   ![preview](/images/6.png)

### task 5
  * Explain what happens when you run the docker container

o	The docker run command creates running containers from images and can run commands inside them.
o	When using the docker run command, a container can run a default action (if it has one), a user specified action, or a shell to be used interactively.   
o	The docker pull command downloads Docker images from the internet, From docker hub
o	The docker image command lists Docker images that are (now) on your computer

o	So far, we’ve seen how to download Docker images, use them to run commands inside running containers, and even how to explore a running container from the inside. Next, we’ll take a closer look at all the different kinds of Docker images that are out there.


### task 6
  * Explain the Docker Architecture

Docker architecture
Docker uses a client-server architecture. The Docker client talks to the Docker daemon, which does the heavy lifting of building, running, and distributing your Docker containers. The Docker client and daemon can run on the same system, or you can connect a Docker client to a remote Docker daemon. The Docker client and daemon communicate using a REST API, over UNIX sockets or a network interface. Another Docker client is Docker Compose, that lets you work with applications consisting of a set of containers.
  
   ![preview](/images/7.png)

### DAY2
  
  ## task1 

  * Write a Docker file for NodeJS application -  

   ## Manual Method
   
   ```
   docker container run -it -p 32456:3000 node:latest
   git clone https://github.com/Azure-Samples/js-e2e-express-server.git
   ls
   cd js-e2e-express-server/
   npm install
   sudo apt install npm
   npm install
   npm start
   ```

   ![preview](/images/8.PNG)
   ![preview](/images/10.PNG)
   ![preview](/images/11.PNG)
   ![preview](/images/9.PNG)

  `Dockerfile`
 ``` 
FROM node:latest
LABEL author="somanath" project="nodejs" organization="expressjs"
RUN apt update && apt install git -y
RUN git clone https://github.com/Azure-Samples/js-e2e-express-server.git
RUN cd js-e2e-express-server/ apt install npm -y && npm install
EXPOSE 3000
CMD ["npm","start"]
```
 ```
  docker image build -t name:1.0 .
  docker image ls
  docker container run -d -P --name expressjs name:1.0
  docker container run -d -P --name expressjs1 name:1.0 sleep 1d
```
![preview](/images/12.PNG)
![preview](/images/13.PNG)

### DAY3
  
  ## task1
  
  * create a MySQL dB container from official MySQL image
```
  docker container run -d --name mysqldb -v mysqldb:/var/lib/mysql -P -e MYSQL_ROOT_PASSWORD=rootroot -e MYSQL_DATABASE=employees -e MYSQL_USER=root -e MYSQL_PASSWORD=rootroot mysql
```
  ![preview](/images/14.PNG)

  ## task2

  * Login into SQL container and create table

  `docker container exec -it mysqldb mysql --password=rootroot`

   ![preview](/images/15.PNG)
```
  show databases;
  use employees;

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```
   ![preview](/images/16.PNG)
 ```  
Insert into Persons Values (1,'test','test', 'test', 'test'); Insert into Persons Values (1,'test','test', 'test', 'test');Insert into Persons Values (1,'test','test', 'test', 'test');Insert into Persons Values (1,'test','test', 'test', 'test');
 ```
exit;

  ## task3
  
  * try to create a persisted volume in MYSQL container and mount that to other 

now delete container and crate new container

 ` docker container run -d --name mysqldb --mount "source=mysqldb,target=/var/lib/mysql,type=volume" -P -e MYSQL_ROOT_PASSWORD=rootroot -e MYSQL_DATABASE=employees -e MYSQL_USER=qtdevops -e MYSQL_PASSWORD=rootroot mysql`

 volume mount we can check data by executing command 

   `docker container exec -it mysqldb mysql --password=rootroot`
 ```
 show databases;
  use employees;
 ```
`Select * from Persons;`

 we are observed data mounted to container
  ![preview](/images/17.PNG)

