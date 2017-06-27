Build Docker Image On OpenCv

- base on phusion/baseimage (Ubuntu 16.04 LTS)
- openCV 2.4.13

Install 
1. Install docker on your computer.
2. clone the repo, and enter the following command: 
<pre>
	docker build -t imageNameAsYouWant .
</pre>

3. and run it.

complie C++ with opencv library on container
<pre>
	g++ -g -Wall main.cpp -I/usr/local/include/opencv -I/usr/local/include -L/usr/local/lib -lopencv_core -lopencv_highgui -lopencv_imgproc
</pre>
