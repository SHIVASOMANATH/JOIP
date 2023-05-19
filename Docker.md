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
