Build Docker Image with OpenCv

- base on phusion/baseimage (Ubuntu 16.04 LTS)
- g++, python3 and openCV 2.4.13

Install 
1. Install docker on your computer.
2. clone the repo, and enter the following command: 
<pre>
$ docker build -t imageNameAsYouWant .
</pre>

and it's ready to go.

complie C++ with opencv library on container
<pre>
$ g++ -g -Wall main.cpp -I/usr/local/include/opencv -I/usr/local/include -L/usr/local/lib -lopencv_core -lopencv_highgui -lopencv_imgproc
</pre>
