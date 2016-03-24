# openshift3-demo-mysql-mm
  This is a demo to build Mysql Master-Master Cluster over openshift
 
## Usage
###  1. We will need to build 2 images for this demo
     nic-mysql-mm is the main image used for start up your mysql M-M custer
     we have one more haproxy which used for internally to provide a Virutal IP for application to login
     but this are not madatory needed in case of openshift
     
###  2. create a new app using the template, and rock!       
