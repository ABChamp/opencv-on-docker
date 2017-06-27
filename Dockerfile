FROM phusion/baseimage

RUN apt-get -y update && \
	apt-get install -y software-properties-common && \
	apt-get install -y build-essential checkinstall curl ntp htop cmake make unzip yasm git vim pkg-config wget && \
	apt-get install -y libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev && \
	apt-get install -y libssl-dev libffi-dev python3-dev python3-pip && \

	rm -rf /var/lib/apt/lists/*

## Download OpenCV 2.4.13 and install OpenCV
ADD installOpenCv.sh /installOpenCv.sh
RUN /bin/bash /installOpenCv.sh
RUN	rm -rf /installOpenCv.sh

# set enviroment open cv
RUN echo "/usr/local/opencv/" > /etc/ld.so.conf.d/opencv.conf && ldconfig 

# defined ENV
ENV HOME /root
WORKDIR /root

CMD ["bash"]