FROM osrf/ros:humble-desktop-full

COPY /EVER_Simulator ./

RUN apt-get update && \
    apt-get install python3-colcon-common-extensions \
    && apt-get install -y python3-pip \
    && pip3 install -U setuptools==58.0.2 \ 
    && apt-get install -y git \
    && apt-get install -y gedit \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

# Install ROS2 dependencies
RUN apt-get update -q && \
	export DEBIAN_FRONTEND=noninteractive && \
    apt-get install xsltproc && \
    apt-get install -y --no-install-recommends \
        vim tar xz-utils \
        libx11-6 libxcb1 libxau6 libgl1-mesa-dev \
        xvfb dbus-x11 x11-utils libxkbcommon-x11-0 \
        libavcodec-dev libavformat-dev libswscale-dev \
        python3.10 python3-pip libraw1394-11 libmpfr6 \
        libusb-1.0-0 \
        && \
    apt-get autoclean -y && apt-get autoremove -y && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /shared /opt

RUN pip3 install pyzmq cbor2 xmlschema

RUN wget https://downloads.coppeliarobotics.com/V4_5_1_rev4/CoppeliaSim_Edu_V4_5_1_rev4_Ubuntu22_04.tar.xz -P /opt
RUN tar -xf /opt/CoppeliaSim_Edu_V4_5_1_rev4_Ubuntu22_04.tar.xz -C /opt
RUN rm /opt/CoppeliaSim_Edu_V4_5_1_rev4_Ubuntu22_04.tar.xz
RUN rm -r /opt/CoppeliaSim_Edu_V4_5_1_rev4_Ubuntu22_04/programming/ros_packages

ENV COPPELIASIM_ROOT_DIR=/opt/CoppeliaSim_Edu_V4_5_1_rev4_Ubuntu22_04

COPY resources/bashrc ./.bashrc 

COPY  resources/interfaces.txt /opt/CoppeliaSim_Edu_V4_5_1_rev4_Ubuntu22_04/programming/ros2_packages/sim_ros2_interface/meta/

COPY resources/build.bash ./

CMD ["./build.bash"]
