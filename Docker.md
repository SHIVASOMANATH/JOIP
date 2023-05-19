DOCKER JOIP TASK
----------------
### DAY1
 * Run Hello World docker container and observe the container status
### command 1
`$ docker container run -d -P --name Hello hello-world`
   ```
   $ docker container ls 
   $ docker container ls -a
  ```
   ![refer](/images/1.PNG)

### command 2  
 *  Check the docker images and write down the size of hello-world images

  `$ docker images`

   ![refer](/images/2.PNG)
  
--- hello-world   latest    9c7a54a9a43c   2 weeks ago   13.3kB

### command 3
 * Run the nginx container with name as nginx1 and expose 8080 port on docker host 
   
   `$ docker container run -d -p 8080:80 --name nginx1 nginx`
   ![preview](/images/3.PNG)
   ![preview](/images/4.PNG)

### command 4
 * Explain docker container lifecycle
   ```
   $ docker container pause nginx1
   $ docker container unpause nginx1
   $ docker container stop nginx1
   $ docker container start nginx1
   $ docker container rm -f nginx1
   ````

   ![preview](/images/5.PNG)

### command 5
  * 5. Explain what happens when you run the docker container

o	The docker run command creates running containers from images and can run commands inside them.
o	When using the docker run command, a container can run a default action (if it has one), a user specified action, or a shell to be used interactively.   
o	The docker pull command downloads Docker images from the internet, From docker hub
o	The docker image command lists Docker images that are (now) on your computer

o	So far, we’ve seen how to download Docker images, use them to run commands inside running containers, and even how to explore a running container from the inside. Next, we’ll take a closer look at all the different kinds of Docker images that are out there.
